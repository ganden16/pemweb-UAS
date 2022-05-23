<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function viewAllCategory()
    {
        return view('category.index', [
            "title" => "Category",
            "categories" => Category::all()
        ]);
    }

    // public function viewCategory(Category $category)
    // {
    //     return view('post', [
    //         "title" => "Post by Category : $category->name",
    //         "posts" => $category->posts->load(['posts', 'category'])
    //     ]);
    // }
}
