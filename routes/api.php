<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::prefix('/admin')->group(function(){

    Route::get('/login',[AdminController::class,'login'])->name('admin_login');

    Route::middleware(['auth:admins,staff'])->group(function (){
        Route::get('/tickets',[AdminController::class,'getTickets'])->name('admin_getTickets');
        Route::get('/claimTicket',[AdminController::class,'claimTicket'])->name('admin_claimTicket');
        Route::get('/resolveTicket',[AdminController::class,'resolveTicket'])->name('admin_resolveTicket');
        Route::get('/closeTicket',[AdminController::class,'closeTicket'])->name('admin_closeTicket');
        Route::post('/replyTicket',[AdminController::class,'replyTicket'])->name('admin_replyTicket');
        Route::get('/getTicketWithReplies',[AdminController::class,'ticketsWithReplies'])->name('admin_ticketsWithReplies');

    });
});

Route::prefix('/user')->group(function (){

    Route::get('/login',[UserController::class,'login'])->name('user_login');

    Route::middleware(['auth:users'])->group(function (){
        Route::get('/tickets',[UserController::class,'getTickets'])->name('user_getTickets');
        Route::post('/saveTicket',[UserController::class,'storeTicket'])->name('user_storeTicket');
        Route::get('/closeTicket',[UserController::class,'closeTicket'])->name('user_closeTicket');
        Route::post('/replyTicket',[UserController::class,'replyTicket'])->name('user_replyTicket');
        Route::get('/findTicketById',[UserController::class,'findTicketById'])->name('user_findTicketById');
    });
});
