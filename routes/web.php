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
    return view('index');
});
// Route::get('/test-route', function () {
//     $data = DB::table('users')->get();

//     print_r($data);
//     print_r($data[0]->address);
//     return "Xin chao cac ban";
// });

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('', function () {
    return view('index');
});
Route::get('demo', function () {
    $data = DB::table('gps_message')->get();
    return view('demo',['data'=>$data]);
});
Route::resource('/posts', 'PostController');


Route::get('/position', 'PositionController@GetPosition') -> name('GetPosition');

Route::get('database',function(){
    $data = DB::table('messgps')->where()->get();
    var_dump($data);
});

