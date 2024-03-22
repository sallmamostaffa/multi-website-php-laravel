<?php

use App\Http\Controllers\admin\MainBannerController;
use App\Http\Controllers\admin\AdminContactFormController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\users\Frontend;
use App\Http\Controllers\users\ContactFormController;

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

/*-----------Admin Routes-------------------*/

Route::resource('login', LoginController::class);
Route::post('anyPath01', 'App\Http\Controllers\LoginController@verifyLogin')->name('verifyLogin');
Route::get('logout', 'App\Http\Controllers\LoginController@logout')->name('logout');


Route::group(['middleware' => 'AdminRole'], function () {
    Route::resource("admin/mainBanner", MainBannerController::class);
    Route::resource("admin/ContactForm", AdminContactFormController::class);


    Route::get('password', 'App\Http\Controllers\LoginController@password')->name('changePassword');
    Route::post('updatePassword', 'App\Http\Controllers\LoginController@updatePassword')->name('updatePassword');
});


// --------------------------------------------------------//

Route::group(['prefix' => '{lang}'], function () {
    Route::get('lang/', function ($lang) {
        app()->setLocale($lang);
        session()->put('locale', $lang);

        return redirect('/' . $lang);
    })->name('lang');

    Route::get('/', [Frontend::class, 'index']);

});

Route::resource("/contactForm", ContactFormController::class);

