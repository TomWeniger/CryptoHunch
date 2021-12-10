<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BlogModel;

class BlogController extends Controller
{
    public function viewBlogpost(){

        $blogs = BlogModel::all();
        return view ('blogs', ['blogs' => $blogs]);   
       
    }

    
    
    public function addBlogpost(){

    }


    public function favouriteBlogpost(){
        
    }



    public function viewFavouriteBlogpost(){
        
    }


    public function deleteTip(){
        
    }

}
