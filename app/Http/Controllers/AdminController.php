<?php

namespace App\Http\Controllers;

use App\Http\Contracts\IRepository;
use App\Http\Contracts\ITicketRepository;
use App\Models\Admin;
use App\Models\Staff;
use App\Models\StaffReply;
use App\Models\Ticket;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AdminController extends Controller
{
    private $repository;
    private $ticketRepository;


    public function __construct(IRepository $repository,ITicketRepository $ticketRepository)
    {
        $this->repository = $repository;
        $this->ticketRepository = $ticketRepository;
    }

    public function getTickets(Request $request){
        if(auth()->guard('admins')->check()){
            $tickets = $this->repository->all(Ticket::class);
        }
        else{
            $tickets = $this->ticketRepository->findByDepartmentId(auth()->user()->id);
        }


        if($tickets){
            return response()->json([
                'message' => 'Success',
                'data' => $tickets
            ]);
        }
        else{
            return response()->json([
                'message' => 'No tickets found'
            ]);
        }
    }

    public function login(Request $request){

        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Wrong input format.',
            ]);
        }

        $authority = $this->repository->findByEmail(Admin::class,$request->email);
        if(!$authority){
            $authority = $this->repository->findByEmail(Staff::class,$request->email);
            if(!$authority){
                return response('Wrong credidentials.', 503);
            }
            else{
                $token = $authority->createToken("adebayoakinfewa")->plainTextToken;

                return response()->json([
                    'message' => 'Staff logged in.',
                    'token' => $token
                ]);
            }
        }
        else{
            $token = $authority->createToken("adebayoakinfewa")->plainTextToken;

            return response()->json([
                'message' => 'Admin logged in.',
                'token' => $token
            ]);
        }
    }

    public function closeTicket(Request $request){
        if(auth()->guard('admins')->check()){
            $ticket = $this->repository->findById(Ticket::class,$request->ticket_id);
        }
        else{
            $ticket = $this->checkIfTicketBelongsToAuthenticatedStaff($request);
        }

        $this->ticketRepository->closeTicket($ticket);

        return response()->json([
            'message' => 'Successful.',
            'data' => $ticket
        ]);
    }

    public function replyTicket(Request $request){

        if(auth()->guard('admins')->check()){
            return response()->json([
                'message' => 'Couldn\'t reach this page'
            ]);
        }

        $ticket = $this->checkIfTicketBelongsToAuthenticatedStaff($request);

        $staffReply = $this->ticketRepository->replyTicket($request,$ticket,StaffReply::class);

        if($staffReply){
            return response()->json([
                'message' => 'Success',
                'data' => $staffReply
            ]);
        }
        else{
            return response()->json([
                'message' => 'Couldn\'t create the staff reply'
            ]);
        }
    }

    public function claimTicket(Request $request){
        if(auth()->guard('admins')->check()){
            return response()->json([
                'message' => 'Couldn\'t reach this page'
            ]);
        }
        $ticket = $this->repository->findById(Ticket::class,$request->ticket_id);
        if($ticket){
            $this->ticketRepository->claimTicket($ticket);
            return response()->json([
                'message' => 'Success',
                'data' => $ticket
            ]);

        }
        else{
            return response('Ticket not found');
        }
    }

    public function resolveTicket(Request $request){
        if(auth()->guard('admins')->check()){
            $ticket = $this->repository->findById(Ticket::class,$request->ticket_id);
        }
        else{
            $ticket = $this->checkIfTicketBelongsToAuthenticatedStaff($request);
        }

        $this->ticketRepository->resolveTicket($ticket);

        return response()->json([
            'message' => 'Successful.',
            'data' => $ticket
        ]);
    }

    public function ticketsWithReplies(Request $request){
        $ticket = $this->repository->findById(Ticket::class,$request->ticket_id);
        $uR = $ticket->userReplies;
        $sR = $ticket->staffReplies;
        return response()->json([
            'message' => 'Successful.',
            'data' => $ticket
        ]);
    }

    public function checkIfTicketBelongsToAuthenticatedStaff($request){
        $validator = Validator::make($request->all(), [
            'ticket_id' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Wrong input format.',
            ]);
        }

        $ticket = $this->repository->findById(Ticket::class,$request->ticket_id);

        if($ticket->staff->id!=auth()->user()->id){
            return response()->json([
                'message' => 'Unauthorized.',
            ]);
        }
        return $ticket;
    }
}
