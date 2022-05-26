<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\models\Post;

class BackController extends Controller
{
    public function back(Post $post)
    {
        if (request()->paginate) {
            return redirect('/favorit/#' . $post->slug);
        }
        return redirect('posts/?page=' . request()->page . '&#' . $post->slug);
    }
}
