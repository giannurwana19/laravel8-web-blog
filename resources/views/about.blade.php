@extends('layouts.main')

@section('container')
<h1>Halaman About</h1>
<h3>{{ $name }}</h3>
<p>{{ $email }}</p>
<img src="img/{{ $image }}" class="img-thumbnail rounded-circle" width="200" alt="{{ $name }}">
@endsection
