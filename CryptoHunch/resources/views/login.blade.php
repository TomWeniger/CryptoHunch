<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" sizes="32x32" href="./images/favicon-32x32.png" />
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:wght@300;400&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css">
    <title>Login</title>

</head>
@if ($message = Session::get('success'))
<p style="color:green">{{ $message }}</p>
@endif

@if ($message = Session::get('error'))
<p style="color:red">{{ $message }}</p>
@endif


<body>
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
        <input type="submit" name="submit" value="Register">
    </form>
</body>

</html>