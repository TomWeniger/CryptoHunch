<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BlogModel;
use Laravel\Ui\Presets\React;


class BlogController extends Controller
{
    public function viewBlogpost()
    {


        return view('post');
    }

    public function __construct()
    {
        $this->middleware(['auth'])->only(['store', 'destroy']);
    }

    /*
    public function show()
    {
        $posts = BlogModel::all(); //fetch all blog posts from DB
        return $posts; //returns the fetched posts
    }
*/

    public function addComment(Request $request)
    {
        // Validations

        $request->validate([

            'blog' => 'required',
            'author_id' => 'required'

        ]);

        $blogPost = new BlogModel;
        $blogPost->blog = $request->blog;
        $blogPost->author_id = $request->author_id;

        $blogPost->save();

        if ($blogPost->save()) {
            return redirect('blogs')->with('success', 'Saved in the db');
        } else {
            return redirect('blogs')->with('error', 'Error');
        }
    }

    public function addBlogpost()
    {
    }


    public function favouriteBlogpost()
    {
    }



    public function viewFavouriteBlogpost()
    {
    }


    public function deleteTip(BlogModel $post)
    {
        $this->authorize('delete', $post);

        $post->delete();

        return back();
    }

    public function store(Request $request)
    {
        $request->validate([
            'author_id' => 'required|integer',
            'blog' => 'required',
            'coin_id' => 'required|integer'

        ]);

        $blogComment = new BlogModel;

        $blogComment->author_id = $request->author_id;
        $blogComment->blog = $request->blog;

        $blogComment->save();

        if ($blogComment->save()) {
            return redirect('blogs')->with('success', 'Saved in the db');
        } else {
            return redirect('blogs')->with('error', 'Error');
        }
    }
}
