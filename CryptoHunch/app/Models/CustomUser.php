<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;

class CustomUser extends Model
{
    use HasFactory;
    public $timestamps = false;

    protected $table = "users";

    public function setPasswordAttribute($password)
    {
        $this->attributes['password'] = Hash::make($password);
    }

    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'password',
        'tip_count',
    ];
}
