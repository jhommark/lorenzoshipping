<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'client'], function() {
    Route::get('/views/{name}', function($name) {
        return view($name);
    });

    Route::any('{path?}', function () {
        return view('client.layouts.master');
    })->where("path", ".+");
});
