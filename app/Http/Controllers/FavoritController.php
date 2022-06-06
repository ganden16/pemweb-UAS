<?php

namespace App\Http\Controllers;

use App\Models\Favorit;
use Illuminate\Http\Request;


class FavoritController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $user_id = auth()->user()->id;
        $posts = Favorit::where('user_id', $user_id)->with('post');
        $paginate = $posts->count();
        return view('account.favorit.index', [
            "title" => "Menu Favorit",
            "posts" => $posts->paginate($paginate)->withQueryString()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Favorit $favorit)
    {
        $validatedData = $request->validate([
            'post_id' => 'required'
        ]);
        $validatedData['user_id'] = auth()->user()->id;
        if ($request->post_id == $favorit->id) {
            return back()->with('success', 'Favorit Sudah Ada!');
        }
        Favorit::create($validatedData);
        return back()->with('success', 'Favorit Berhasil Ditambahkan!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Favorit  $favorit
     * @return \Illuminate\Http\Response
     */
    public function show(Favorit $favorit)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Favorit  $favorit
     * @return \Illuminate\Http\Response
     */
    public function edit(Favorit $favorit)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Favorit  $favorit
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Favorit $favorit)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Favorit  $favorit
     * @return \Illuminate\Http\Response
     */
    public function destroy(Favorit $favorit)
    {
        Favorit::destroy($favorit->id);
        if (request()->page) {
            return redirect('/posts/?page=' . request()->page . '&#' . request()->slug)->with('success', 'Favorit Berhasil Dihapus!');
        }
        return back()->with('success', 'Favorit Berhasil Dihapus!');
    }
}
