<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/*
$id
$user_id
$coin_id
$blog
$date
*/

class BlogModel extends Model
{
    use HasFactory;

    protected $fillable = [
        'blog_post',
        'coin_id',
        'date',
        'user_id',
    ];


    public $timestamps = false;

}
