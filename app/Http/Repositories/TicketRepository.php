<?php

namespace App\Http\Repositories;

use App\Http\Constants\Status;
use App\Http\Contracts\IRepository;
use App\Http\Contracts\ITicketRepository;
use App\Models\Department;
use App\Models\Staff;
use App\Models\StaffReply;
use App\Models\Ticket;
use App\Models\UserReply;
use Illuminate\Http\Request;

class TicketRepository implements ITicketRepository
{
    private $repository;

    public function __construct(IRepository $repository)
    {
        $this->repository = $repository;
    }
    /**
     * Returns all tickets with the given user
     *
     * @param $id // Id of the user
     * @return Ticket
     */
    public function getTicketsWithUserId($id)
    {
        return Ticket::all()->where('user_id',$id);
    }

    /**
     * Creating a new ticket for a user
     *
     * @param Request $request // Http request from rest
     * @return Ticket
     */

    public function saveTicket($request)
    {
        $department = $this->repository->findById(Department::class,$request->department_id);

        if(!$department) return null;

        $ticket = Ticket::create([
            'subject' => $request->subject,
            'message' => $request->message,
            'department_id' => $request->department_id,
            'user_id' => auth()->user()->id
        ]);

        $ticket->save();

        return $ticket;
    }

    /**
     * Changing the status of the ticket to 'closed'
     *
     * @param $ticket // The ticket about to be operated
     */

    public function closeTicket($ticket)
    {
        $ticket->status = Status::Closed;
        $ticket->save();
    }

    /**
     * Reply a users ticket by user or by staff
     *
     * @param $request // Http request from rest
     * @param $ticket // The ticket about to be operated
     * @param $model // The model for CRUD operations
     * @return mixed $model
     */

    public function replyTicket($request,$ticket,$model)
    {
        $userReply = null;

        if($ticket->status === Status::Closed->value || $ticket->status === Status::Resolved->value){
            return $userReply;
        }
        $userReply = $model::create([
            'message' => $request->message,
            'ticket_id' => $ticket->id
        ]);
        if($model == StaffReply::class){
            $ticket->status = Status::WaitingCustomer->value;
        }
        else{
            $ticket->status = Status::Open->value;
        }
        $userReply->save();
        $ticket->save();

        return $userReply;
    }

    /**
     * Return tickets by department id
     *
     * @param $id // Department id
     * @return Ticket
     */

    public function findByDepartmentId($id)
    {
        return Ticket::all()->where('department_id',$id);
    }

    /**
     * Assigns a ticket to a staff
     *
     * @param $ticket // Ticket to be assigned
     * @return Ticket
     */

    public function claimTicket($ticket)
    {
        $ticket->staff_id = auth()->user()->id;
        $ticket->status = Status::Open->value;
        $ticket->save();
        return $ticket;
    }

    /**
     * Changing the status of the ticket to 'resolved'
     *
     * @param $ticket // The ticket about to be operated
     */


    public function resolveTicket($ticket)
    {
        $ticket->status = Status::Resolved;
        $ticket->save();
    }

}
