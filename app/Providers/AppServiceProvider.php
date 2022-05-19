<?php

namespace App\Providers;

use App\Http\Contracts\IDepartmentRepository;
use App\Http\Contracts\IRepository;
use App\Http\Contracts\ITicketRepository;
use App\Http\Contracts\IUserRepository;
use App\Http\Repositories\DepartmentRepository;
use App\Http\Repositories\Repository;
use App\Http\Repositories\TicketRepository;
use App\Http\Repositories\UserRepository;
use App\Models\User;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->app->bind(IUserRepository::class, UserRepository::class);
        $this->app->bind(IRepository::class, Repository::class);
        $this->app->bind(ITicketRepository::class, TicketRepository::class);
    }
}
