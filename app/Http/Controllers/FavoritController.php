<?php

namespace App\Http\Controllers;

use App\Models\Favorit;
use App\Models\Post;
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
        return view('account.favorit.index', [
            "title" => "Menu Favorit",
            "posts" => Post::where('user_id', $user_id)->with('favorit')->get()

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
    public function store(Request $request)
    {
        //
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
        $validatedData = $request->validate([
            "post_id" => 'required'
        ]);
        $user_id = auth()->user()->id;
        // $favorit = Favorit::where('user_id', $user_id)->get();

        if ($request->id != $favorit->id) {
            Favorit::where('id', $request->id)
                ->update($validatedData);
            return redirect('/dashboard/posts')->with('success', 'Postingan Berhasil Diperbarui');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Favorit  $favorit
     * @return \Illuminate\Http\Response
     */
    public function destroy(Favorit $favorit)
    {
        //
    }
}
