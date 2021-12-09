@extends('mytemplate')

@section('title', 'Login')

@section('content')

@if ($message = Session::post('success'))
<p style="color:green">{{ $message }}</p>
@endif

@if ($message = Session::post('error'))
<p style="color:red">{{ $message }}</p>
@endif

@if ($errors->any())
<div class="alert alert-danger">
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif

<body>
    <form method="post">
        <h1>Register</h1>
        @csrf

        <input type="text" name="first_name" placeholder="Firstname"><br>
        <input type="text" name="last_name" placeholder="Lastname"><br>
        <input type="email" name="email" placeholder="E-mail"><br>
        <input type="password" name="password" placeholder="Password"><br>
        <input type="number" name="tip_count" placeholder="Tip Count"><br>
        <input type="submit" name="submit" value="Register">
    </form>
</body>

</html>
@endsection