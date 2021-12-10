<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TipsModel;

class TipController extends Controller
{
    public function view_tips() {
        
       $tips = TipsModel::all();
       return view ('tips', ['tips' => $tips]);   
    }




    public function give_tips() {
        
    }


    public function like_tips() {
        
    }

    public function favourite_tips() {
        
    }

    public function view_tips_statistics() {
        
    }

    
}
