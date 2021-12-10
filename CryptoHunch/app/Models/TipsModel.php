<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
/* SQL database data

$id
$price_at_the_time_of_tip
$tip_percentage
$reason
$reason_user_description
$calculated_tip_price
$user_id
$coin_id

*/

class TipsModel extends Model
{
    use HasFactory;
    protected $table = 'tips';


    protected $fillable = [
        'price_at_time_of_tip',
        'tip_percentage',
        'date',
        'tip_direction',
        'reason',
        'reason_description',
        'calculated_tip_price',
        'user_id',
        'coin_id',
    ];


    public $timestamps = false;
}
