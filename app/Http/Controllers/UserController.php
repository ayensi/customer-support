<?php

namespace App\Http\Controllers;

use App\Http\Constants\Status;
use App\Http\Contracts\IRepository;
use App\Http\Contracts\ITicketRepository;
use App\Models\Ticket;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    private ITicketRepository $ticketRepository;
    private IRepository $repository;

    public function __construct(ITicketRepository $ticketRepository, IRepository $repository)
    {
        $this->ticketRepository = $ticketRepository;
        $this->repository = $repository;
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

        $user = $this->repository->findByEmail(User::class,$request->email);

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response('Wrong credidentials.', 503);
        }

        $token = $user->createToken("adebayoakinfewa")->plainTextToken;

        return response()->json([
            'message' => 'Logged in.',
            'token' => $token
        ]);
    }

    public function getTickets(Request $request){
        $tickets = $this->ticketRepository->getTicketsWithUserId(auth()->user()->id);

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

    public function findTicketById(Request $request){
        $ticket = $this->checkIfTicketBelongsToAuthenticatedUser($request);
        return response()->json([
            'message' => 'Success',
            'data' => $ticket
        ]);
    }

    public function storeTicket(Request $request){

        $validator = Validator::make($request->all(), [
            'subject' => 'required',
            'message' => 'required',
            'department_id' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Wrong input format.',
            ]);
        }

        $ticket = $this->ticketRepository->saveTicket($request);

        if($ticket){
            return response()->json([
                'message' => 'Success',
                'data' => $ticket
            ]);
        }
        else{
            return response()->json([
                'message' => 'Couldn\'t create the ticket'
            ]);
        }
    }

    public function closeTicket(Request $request){
        $ticket = $this->checkIfTicketBelongsToAuthenticatedUser($request);

        $this->ticketRepository->closeTicket($ticket);

        return response()->json([
            'message' => 'Successful.',
            'data' => $ticket
        ]);
    }

    public function replyTicket(Request $request){
        $ticket = $this->checkIfTicketBelongsToAuthenticatedUser($request);

        $userReply = $this->ticketRepository->replyTicket($request,$ticket,User::class);

        if($userReply){
            return response()->json([
                'message' => 'Success',
                'data' => $userReply
            ]);
        }
        else{
            return response()->json([
                'message' => 'Couldn\'t create the user reply'
            ]);
        }
    }

    public function checkIfTicketBelongsToAuthenticatedUser($request){
        $validator = Validator::make($request->all(), [
            'ticket_id' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Wrong input format.',
            ]);
        }

        $ticket = $this->repository->findById(Ticket::class,$request->ticket_id);

        if($ticket->user->id!=auth()->user()->id){
            return response()->json([
                'message' => 'Unauthorized.',
            ]);
        }
        return $ticket;
    }
}
