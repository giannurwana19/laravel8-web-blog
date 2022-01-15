<?php

use App\Http\Controllers\PostController;
use App\Models\Category;
use App\Models\User;
use Illuminate\Support\Facades\Route;

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
    return view('home', ['title' => 'Home']);
});

Route::get('/about', function () {
    return view('about', [
        'title' => 'About',
        'name' => 'Gian Nurwana',
        'email' => 'giannurwana19@gmail.com',
        'image' => 'avatar.png'
    ]);
});

Route::get('/posts', [PostController::class, 'index']);
Route::get('/posts/{post:slug}', [PostController::class, 'show']);

Route::get('/categories', function () {
    return view('categories', [
        'title' => 'Post Category',
        'categories' => Category::all()
    ]);
});

// Route::get('/categories/{category:slug}', function (Category $category) {
//     return view('posts', [
//         'title' => "Post by Category: $category->name",
//         'posts' => $category->posts->load('category', 'author'),
//     ]);
// });

// Route::get('/authors/{author:username}', function (User $author) { // memberi alias
//     return view('posts', [
//         'title' => "Post by Author: $author->name",
//         'posts' => $author->posts->load('category', 'author'), // lazy eager loading
//     ]);
// });
