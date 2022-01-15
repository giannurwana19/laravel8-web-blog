<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        return view('posts', [
            'title' => 'All Posts',
            'posts' => Post::with(['author', 'category'])->latest()->get(),
            // 'posts' => Post::all()
        ]);
    }

    public function show(Post $post)
    {
        return view('post', ['title' => 'Single Post', 'post' => $post]);
    }
}

// Kita bisa mengatasi N + 1 Problem dengan eager loading
// dengan menambah method with()
