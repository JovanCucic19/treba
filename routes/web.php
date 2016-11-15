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

Route::get('/', function()
{
    return view('welcome');
});
// Route::get('about', function()
// {
//     return view('pages.about');
// });

Route::get('vauceri','SelectController@selectAllVauceriPutovanje');

Route::get('vizitKarte', function()
{
    return view('pages.vizitKarte');
});

Route::get('contact', function()
{
    return view('pages.contact');
});
