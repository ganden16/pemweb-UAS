<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Favorit;
use App\Models\Post;

class FavoritController extends Controller
{
    public function index()
    {
        $user_id = auth()->user()->id;
        return view('account.favorit.index', [
            "title" => "Menu Favorit",
            "posts" => Post::where('user_id', $user_id)->with('favorit')->get()
        ]);
    }
}
