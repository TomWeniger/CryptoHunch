@extends('mytemplate')

@section('title', 'Login')

@section('content')


@if ($message = Session::get('success'))
<p style="color:green">{{ $message }}</p>
@endif

@if ($message = Session::get('error'))
<p style="color:red">{{ $message }}</p>
@endif

@if (Auth::check()) {
return redirect()->route('login');
}

@endif
<form method="post">
    <h1>Login</h1>
    @csrf
    <input type="email" name="email" placeholder="E-mail"><br>
    @error('email')
    <div class="text-red-500 mt-2 text-sm p-6">
        {{ $message }}
    </div>
    @enderror
    <input type="password" name="password" placeholder="Password"><br>
    @error('password')
    <div class="text-red-500 mt-2 text-sm p-6">
        {{ $message }}
    </div>
    @enderror
    <input type="submit" name="submit" value="Login">
</form>

@endsection