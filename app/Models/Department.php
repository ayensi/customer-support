<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function staff(){
        return $this->hasMany(Staff::class);
    }
    public function tickets(){
        return $this->hasMany(Ticket::class);
    }
}
