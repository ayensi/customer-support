<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function staff(){
        return $this->belongsTo(Staff::class);
    }
    public function department(){
        return $this->belongsTo(Department::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
    public function userReplies(){
        return $this->hasMany(UserReply::class);
    }
    public function staffReplies(){
        return $this->hasMany(StaffReply::class);
    }
}
