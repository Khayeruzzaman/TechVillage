<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\web\SearchController;

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

Route::group(['namespace' => 'web'], function () {

    Route::get('/', [SearchController::class, 'list']);
});
