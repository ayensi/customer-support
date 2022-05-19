<?php

namespace App\Http\Repositories;

use App\Http\Contracts\IRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class Repository implements IRepository
{
    /**
     * Returns first element with the given models id
     *
     * @param $model // The model for CRUD operations
     * @param $id // Id of the value returned
     * @return mixed $model
     */
    public function findById($model, $id)
    {
        return $model::where('id',$id)->first();
    }
    /**
     * Returns first element with the given models email
     *
     * @param $model // The model for CRUD operations
     * @param $email // Email of the value returned
     * @return mixed $model
     */
    public function findByEmail($model, $email)
    {
        return $model::where('email',$email)->first();
    }
    /**
     * Returns all elements with the given model
     *
     * @param $model // The model for CRUD operations
     * @return mixed $model
     */
    public function all($model)
    {
        return $model::all();
    }
}
