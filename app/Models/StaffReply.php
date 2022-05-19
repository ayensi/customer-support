<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StaffReply extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function staff(){
        return $this->belongsTo(Staff::class);
    }
    public function ticket(){
        return $this->belongsTo(Ticket::class);
    }
}
