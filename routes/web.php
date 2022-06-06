<?php

use App\Models\Post;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\FavoritController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\AdminUserController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AdminCategoryController;
use App\Http\Controllers\DashboardPostController;

Route::get('/', function () {
    return view('home.index', [
        "title" => "Home",
        "posts" => Post::orderBy('id', 'desc')->limit(3)->get(),
        "postsu" => Post::orderBy('updated_at', 'desc')->limit(3)->get()
    ]);
});

Route::get('/about', function () {
    return view('tentangKami.index', [
        'title' => 'Tentang Kami'
    ]);
});

Route::get('/posts', [PostController::class, 'viewAllPosts']);
Route::get('/posts/{post:slug}', [PostController::class, 'viewPost']);
// Route::get('/posts', [PostController::class, 'viewAllPostsAdmin'])->middleware('auth');
// Route::get('/posts/{post:slug}', [PostController::class, 'viewPostAdmin'])->middleware('auth');

Route::get('/category', [CategoryController::class, 'viewAllCategory']);

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/dashboard', [DashboardController::class, 'index'])->middleware('admin');
Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('admin');
Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('admin');

Route::resource('/dashboard/categories', AdminCategoryController::class)->middleware('admin');

Route::resource('/dashboard/users', AdminUserController::class)->middleware('admin');

Route::resource('/favorit', FavoritController::class)->middleware('auth');

Route::resource('/user', UserController::class)->middleware('auth');

// Route::get('/back/posts/{post}', [BackController::class, 'back']);
