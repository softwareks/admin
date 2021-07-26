<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\UserController;

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

Route::post('/register', [UserController::class, 'register'])->name('register');
Route::post('/register-provider', [UserController::class, 'registerProvider'])->name('registerProvider');
Route::post('/login', [UserController::class, 'login'])->name('login');

Route::group(['middleware' => 'auth:user'], function () {
    Route::post('/logout', [UserController::class, 'logout'])->name('logout');
});
