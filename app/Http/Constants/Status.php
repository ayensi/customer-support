<?php

namespace App\Http\Constants;

enum Status: string
{
    case Open = 'open';
    case Closed = 'closed';
    case WaitingCustomer = 'waitingCustomer';
    case Resolved = 'resolved';
}
