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

    public $timestamps = false;

    protected $table = "blogs";


    protected $fillable = [
        'author_id',
        'blog',
        'coin_id'

    ];




    public function likedBy(User $user)
    {
        return $this->likes->contains('user_id', $user->id);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function likes()
    {
        return $this->hasMany(Like::class);
    }
}
