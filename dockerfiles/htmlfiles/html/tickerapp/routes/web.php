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

//Route::get('/',function() {
//return view('home');
//});
Route::get('/company-register', 'RegistersController@companyRegister');
Route::post('/company-register', 'RegistersController@savecompany');
Route::get('/login', 'RegistersController@login');
Route::post('/login', 'RegistersController@checklogin');
//  Route::get('/login', 'DashboardController@checkuserlogin');
// Route::post('/login', 'DashboardController@checkuserlogin');
Route::get('/create', 'RegistersController@create');

Route::post('post', 'RegistersController@store');

Route::get('/dashboard', 'DashboardController@dashboard');

Route::post('/dashboard', 'DashboardController@dashboardpage');
Route::get('/user', 'DashboardController@user');


//Route::get('/adduser', 'DashboardController@adduser');
// Route::post('/adduser', 'DashboardController@newuser');

Route::get('/addticker', 'DashboardController@addticker');
Route::post('/addticker', 'DashboardController@saveticker'); 
Route::get('/tickers', 'DashboardController@tickerList');
Route::get('/showticker', 'TickerController@showTicker'); 
Route::get('/addtickerdata', 'TickerController@addTickerData');
Route::post('/addtickerdata', 'TickerController@saveTickerData'); 

Route::get('/users', 'DashboardController@userList');
Route::get('/adduser', 'DashboardController@userAdd');
Route::post('/adduser', 'DashboardController@userSave');

Route::get('/edituser', 'DashboardController@editUser');
Route::post('/edituser', 'DashboardController@updateuser');

Route::get('/addrole', 'RoleController@addrole');
Route::post('/addrole', 'RoleController@saverole');

Route::get('/editrole', 'RoleController@editrole');
Route::post('/editrole', 'RoleController@updaterole');

Route::get('/roles', 'RoleController@rolelist');
Route::get('/addrole', 'RoleController@addrole');
Route::post('/addrole', 'RoleController@saverole');

Route::get('/addtickertype', 'TickerController@addtickertype');
Route::post('/addtickertype', 'TickerController@savetickertype');

Route::get('/ticker_types', 'TickerController@tickertypelist');
Route::post('/ticker_types', 'TickerController@savetickertype');

Route::get('/edit_ticker_types', 'TickerController@edittickertype');
Route::post('/edit_ticker_types', 'TickerController@updatetickertype');

Route::get('/edit_ticker', 'TickerController@editticker');
Route::post('/edit_ticker', 'TickerController@updateticker');

Route::get('/delete_ticker', 'TickerController@destroyticker');
Route::post('/tickers' ,'TickerController@destroyticker');

// Route::get('/edituser', 'DashboardController@editUpdate');
// Route::post('/edituser', 'DashboardController@editSave');

Route::get('/delete_ticker_types', 'TickerController@destroy_ticker_type');
Route::post('/ticker_types' ,'TickerController@destroy_ticker_type');

Route::get('/deleterole', 'RoleController@destroy_role');
Route::post('/roles' ,'RoleController@destroy_role');

Route::get('/deleteuser', 'DashboardController@destroy_user');
Route::post('/users' ,'DashboardController@destroy_user');

Route::get('/logout', 'DashboardController@logout');

// Route::post('/logout' ,'DashboardController@logout_session');












//Route::post('/register','RegistersController@register');
//Route::get('/Home','RegistersController@home');

