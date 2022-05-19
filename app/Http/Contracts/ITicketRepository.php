<?php

namespace App\Http\Contracts;

interface ITicketRepository
{
    public function findByDepartmentId($id);
    public function getTicketsWithUserId($id);
    public function saveTicket($request);
    public function closeTicket($ticket);
    public function claimTicket($ticket);
    public function resolveTicket($ticket);
    public function replyTicket($request,$ticket,$model);
}
