<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CustomUser;

class RegisterController extends Controller
{


    public function __construct()
    {
        $this->middleware(['guest']);
    }


    public function register()
    {
        return view('register');
    }

    public function store(Request $request)
    {
        // Validations

        $request->validate([

            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required',
            'password' => 'required',
            'tip_count' => 'required'
        ]);

        $user = new CustomUser;

        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->email = $request->email;
        $user->password = $request->password;
        $user->tip_count = $request->tip_count;

        auth()->attempt($request->only('email', 'password'));




        if ($user->save())
            return back()->with('success', 'Saved in the DB');
        else
            return back()->with('error', 'Something wrong with the DB');
    }
}
