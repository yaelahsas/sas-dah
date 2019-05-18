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

Route::get('/', function () {
    return view('welcome');
});


Route::get('/gilang', function () {
    return view('gilang1');
});

Route::get('/sastra', function () {
    return view('sastra');
});

Route::get('admin', function(){
    return view('admin.index');
});

Auth::routes();
//Route::post('admin/users/create','AdminUsersController@store')->name('admin.users.create');

Route::get('/home', 'HomeController@index')->name('home');
//Route::get('admin/users','AdminUsersController@index')->name('admin.users.index');
Route::resource('admin/users', 'AdminUsersController');