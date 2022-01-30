@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row mb-5">
        <div class="col-lg-8">
            <h1 class="my-3">{{ $post->title }}</h1>

            <a href="/dashboard/posts" class="btn btn-success btn-sm"><span data-feather="arrow-left"></span> Back to
                all my
                posts</a>
            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning btn-sm"><span
                    data-feather="edit"></span> Edit</a>

            <form action="/dashboard/posts/{{ $post->slug }}" method="POST" class="d-inline">
                @csrf
                @method('DELETE')
                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><span
                        data-feather="x-circle"></span>Delete</button>
            </form>

            @if($post->image)
            <div style="max-height: 400px; overflow: hidden;">
                <img src="{{ asset("storage/$post->image") }}" class="img-fluid mt-3" alt="{{ $post->category->name }}">
            </div>
            @else
            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="img-fluid mt-3"
                alt="{{ $post->category->name }}">
            @endif
            <article class="my-3 fs-5">
                {!! $post->body !!}
            </article>

        </div>
    </div>
</div>

@endsection
