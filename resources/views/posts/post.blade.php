@extends('layouts.main')

@section('container')

    @if(session()->has('success'))
    <div class="alert alert-success alert-dismissible fade show col-lg-6" style="margin:10px auto;" role="alert">  
        {{ session('success') }} 
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>  
    @endif
<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-md-8">
            <h1 class="mb-3">{{ $post->title }}</h1>
            @if($post->image)
                <div style="max-height:400px; overflow:hidden">
                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid ">
                </div>
            @else
                <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid ">
            @endif
            <h4>{{ $post->id }}</h4>
            @if(auth()->user())    
                @if($favorit)
                    <form action="/favorit/{{$fav}}" method="post" class="d-flex justify-content-end">
                        @method('delete')
                        @csrf
                        <input type="hidden" value="{{ $fav }}" name="post_id">
                        <button type="submit" class="btn">
                            <i class="bi bi-heart-fill"></i>
                        </button>
                    </form>
                @else
                    <form action="/favorit" method="post" class="d-flex justify-content-end">
                        @csrf
                        <input type="hidden" value="{{ $post->id }}" name="post_id">
                        <button type="submit" class="btn" >
                            <i class="bi bi-heart" ></i>
                        </button>
                    </form>
                @endif
            @else
            <form action="/favorit" method="post" class="d-flex justify-content-end">
                @csrf
                <input type="hidden" value="{{ $post->id }}" name="post_id">
                <button type="submit" class="btn" >
                    <i class="bi bi-heart" ></i>
                </button>
            </form>
            @endif
            <article class="my-3 fs-5">
                {!! $post->body !!}
            </article>
            {{-- <form action="/back/posts/{{ $post->slug }}" method="get">
                <input type="hidden" name="paginate" value="{{ request()->paginate }}">
                <input type="hidden" name="page" value="{{ $page }}">
                <button type="submit" class="btn btn-warning">Kembali</button>
            </form> --}}
            @if (request()->keFavorit)
            <a href={{ '/favorit/#' . $post->slug }}>Kembali</a>
            @else
            <a href={{ '/posts/?page=' . $page . '&#' . $post->slug }}>Kembali</a>
            @endif
            
        </div>
    </div>
</div>
@endsection 