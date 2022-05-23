<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
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
        if (request('author')) {
            $author = User::firstWhere('username', request('author'));
            $title = 'by ' . $author->name;
        }
        return view('posts.index', [
            "title" => "Halaman Posts " . $title,
            "posts" => Post::latest()->filter(request(['search', 'author', 'category']))->paginate(6)->withQueryString()
        ]);
    }

    public function viewPost(Post $post)
    {
        return view('posts.post', [
            "title" => "Post",
            "post" => $post
        ]);
    }
}
