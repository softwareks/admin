<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [AdminController::class, 'login'])->name('login');
Route::post('/submit', [AdminController::class, 'submitAdminLogin'])->name('submitAdminLogin');

Route::group(['prefix' => 'admin','middleware' => 'AdminLogin'], function () {
    Route::get('/dashboard', [AdminController::class, 'adminDashboard'])->name('adminDashboard');
    Route::get('/logout', [AdminController::class, 'logout'])->name('logout');
    Route::get('/users-list', [AdminController::class, 'usersList'])->name('usersList');
    Route::post('/get-users-list', [AdminController::class, 'getUsersList'])->name('getUsersList');

});
