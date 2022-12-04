<?php

use App\Http\Controllers\UserMessagesController;
use App\Models\UserMessageModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Broadcast;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Broadcast::routes();
Route::get('/get/event', function () {
    event(new \App\Events\NewMessage('hello there'));
    return 'something happend';
});

Route::post('/get/users/chat', [UserMessagesController::class, 'getAllChats']);
