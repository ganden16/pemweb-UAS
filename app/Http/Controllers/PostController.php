<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Favorit;
use App\Models\Category;
use App\Models\User;

class PostController extends Controller
{
    public function viewAllPosts()
    {
        $title = '';
        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'));
            $title = 'in ' . $category->name;
        }
        $posts = Post::latest()->filter(request(['search', 'category']))->paginate(6)->withQueryString();
        $user_id = auth()->user()->id;
        return view('posts.index', [
            "title" => "Halaman Posts " . $title,
            "posts" => $posts,
            "favorits" => Favorit::where('user_id', $user_id)->with('post')->get()
        ]);
    }

    public function viewPost(Post $post)
    {
        $user_id = auth()->user()->id;
        $favorits = Favorit::where('user_id', $user_id)->with('post')->get();
        $favorit = false;
        $favor = false;
        foreach ($favorits as $fav) {
            if ($post->id == $fav->post_id) {
                $favorit = true;
                $favor = $fav->id;
            }
        }
        return view('posts.post', [
            "title" => "Post",
            "post" => $post,
            "favorit" => $favorit,
            "fav" =>  $favor
        ]);
    }
}
