<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Favorit;
use App\Models\Category;

class PostController extends Controller
{
    public function viewAllPosts()
    {
        $paginate = 9;
        $title = '';
        $title = 'Semua Resep';
        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'));
            $title = 'Resep Kategori ' . $category->name;
        }
        $posts = Post::latest()->filter(request(['search', 'category']))->paginate($paginate)->withQueryString();
        if (auth()->user()) {
            $user_id = auth()->user()->id;
            return view('posts.index', [
                "title" => $title,
                "posts" => $posts,
                "favorits" => Favorit::where('user_id', $user_id)->get()
            ]);
        } else {
            return view('posts.index', [
                "title" => $title,
                "posts" => $posts
            ]);
        }
    }

    public function viewPost(Post $post)
    {
        $category_id = $post->category->id;
        $posts_category = Post::where('category_id', $category_id)->where('id', '!=', $post->id)->limit(3)->get();
        $posts_latest = Post::orderBy('id', 'desc')->limit(3)->get();
        $posts_update = Post::orderBy('updated_at', 'desc')->limit(3)->get();
        if (auth()->user()) {
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
                "fav" =>  $favor,
                "posts_category" =>  $posts_category,
                "posts_latest" => $posts_latest,
                "posts_update" => $posts_update
            ]);
        } else {
            return view('posts.post', [
                "title" => "Post",
                "post" => $post,
                "posts_category" =>  $posts_category,
                "posts_latest" => $posts_latest,
                "posts_update" => $posts_update
            ]);
        }
    }
}
