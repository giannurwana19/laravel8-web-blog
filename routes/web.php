<?php

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

$blogPosts = [
    [
        'title' => 'Judul Post Pertama',
        'slug' => 'judul-post-pertama',
        'author' => 'Gian',
        'body' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eum, corporis cumque itaque culpa nisi quis voluptatem neque tenetur repellendus, nulla mollitia. Perferendis quasi cumque tempore natus ex nostrum illo, soluta asperiores rem. Beatae, sequi placeat a impedit consequuntur voluptatem eaque fuga reiciendis quibusdam? Voluptate harum dolorum expedita facilis quo adipisci!'
    ],
    [
        'title' => 'Judul Post Kedua',
        'slug' => 'judul-post-kedua',
        'author' => 'Andi',
        'body' => 'soluta asperiores rem. Beatae, sequi placeat a impedit consequuntur voluptatem eaque fuga reiciendis quibusdam? Voluptate harum dolorum expedita facilis quo adipisci! Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eum, corporis cumque itaque culpa nisi quis voluptatem neque tenetur repellendus, nulla mollitia. Perferendis quasi cumque tempore natus ex nostrum illo, soluta asperiores rem. Beatae, sequi placeat a impedit consequuntur voluptatem eaque fuga reiciendis quibusdam? Voluptate harum dolorum expedita facilis quo adipisci!'
    ],
    [
        'title' => 'Judul Post Pertama',
        'slug' => 'judul-post-ketiga',
        'author' => 'Lukman',
        'body' => 'quibusdam? Voluptate Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eum, corporis cumque itaque culpa nisi quis voluptatem neque tenetur repellendus, nulla mollitia. Perferendis quasi cumque tempore natus ex nostrum illo, soluta asperiores rem. Beatae, sequi placeat a impedit consequuntur voluptatem eaque fuga reiciendis quibusdam? Voluptate harum dolorum expedita facilis quo adipisci! dolor sit, amet consectetur adipisicing elit. Eum, corporis cumque itaque culpa nisi quis voluptatem neque tenetur repellendus, nulla mollitia. Perferendis quasi cumque tempore natus ex nostrum illo, soluta asperiores rem. Beatae, sequi placeat a impedit consequuntur voluptatem eaque fuga reiciendis q'
    ],
];

Route::get('/blog', function () use ($blogPosts) {
    return view('posts', ['title' => 'Blog', 'posts' => $blogPosts]);
});


Route::get('/posts/{slug}', function ($slug) use ($blogPosts) {
    $newPost = [];
    foreach ($blogPosts as $post) {
        if ($post['slug'] === $slug) {
            $newPost = $post;
        }
    }

    return view('post', ['title' => 'Single Post', 'post' => $newPost]);
});
