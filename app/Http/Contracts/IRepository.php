<?php

namespace App\Http\Contracts;

interface IRepository
{
    public function findById($model, $id);
    public function findByEmail($model, $email);
    public function all($model);
}
