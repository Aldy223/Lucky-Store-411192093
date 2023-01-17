<?php

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

// use Illuminate\Routing\Route;
use Illuminate\Support\Facades\Route;

Auth::routes();

//Route::get('/index', 'HomeController@index')->name('/');

Route::get('/', function () {
    return view('/index');
});

Route::resource('barangs', 'BarangController');
Route::resource('pelanggans', 'PelangganController');
Route::resource('penjualans', 'PenjualanController');
