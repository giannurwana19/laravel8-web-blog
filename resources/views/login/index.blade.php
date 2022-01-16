@extends('layouts.main')

@section('container')
<div class="row justify-content-center">
    <div class="col-lg-4">

        @if(session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <div class="text-center">{{ session('success') }}</div>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif

        @if(session('login-error'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <div class="text-center">{{ session('login-error') }}</div>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif

        <main class="form-signin">
            <h1 class="h3 mb-3 fw-normal text-center">Please Login</h1>

            <form action="/login" method="POST">
                @csrf
                <div class="form-floating">
                    <input type="email" name="email" value="{{ old('email') }}"
                        class="form-control @error('email') is-invalid @enderror" id="email"
                        placeholder="name@example.com" autofocus required>
                    <label for="email">Email address</label>
                    @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
                <div class="form-floating">
                    <input type="password" name="password" class="form-control" id="password" placeholder="Password"
                        required>
                    <label for="password">Password</label>
                </div>

                <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
            </form>


            <div class="mt-3 text-center">
                <small>Not registered? <a href="/register">Register Now!</a></small>
            </div>
        </main>
    </div>
</div>
@endsection
