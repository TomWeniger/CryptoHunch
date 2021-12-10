<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


/* SQL database data

$id
$date
$description
$currency1
$amount1
$currency2
$amount2
$user_id

*/

class TransactionModel extends Model
{
    use HasFactory;
}
