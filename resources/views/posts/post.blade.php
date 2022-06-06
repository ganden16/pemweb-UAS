@extends('layouts.main')
<br><br><br><br>
@section('container')
    <div class="container mb-5">
        @if(session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show col-lg-6" style="margin:10px auto;" role="alert">  
            {{ session('success') }} 
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>  
        @endif
        <div class="row">
            <div class="col-md-8 mb-5 p-3">
                <h1 class="mb-3">{{ $post->title }}</h1>
                @if($post->image)
                    <div style="max-height:400px; overflow:hidden">
                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid ">
                    </div>
                @else
                    <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid ">
                @endif
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
                @if (request()->favorit)
                    <a class="btn btn-warning" href="{{ '/favorit/#' . $post->slug }}">Kembali ke Posts</a>
                @elseif(request()->category)
                    <a class="btn btn-warning" href="{{ '/posts?category=' . request()->category . '&#' . $post->slug }}">Kembali ke Posts</a>   
                @else
                    <a class="btn btn-warning" href="{{ '/posts/?page=' . request()->page . '&#' . $post->slug }}">Kembali ke Posts</a>
                @endif 
            </div>
            <div class="col-md-4 ">
                <div class="row mb-3 shadow p-3 d-flex justify-content-center">
                    <h5 class="mb-4 text-center">Menu Lain Terkait <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a> </h5>
                    @foreach ($posts_category as $post)
                    <a href="/posts/{{ $post->slug }}" class="text-decoration-none text-dark ">
                        <div class="card mb-3 p-2" style="max-heigt: 13rem">
                           @if($post->image)
                            <div style="max-height:150px; overflow:hidden">
                                <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->image}}" class="img-fluid ">
                            </div>
                            @else
                                <img src="https://source.unsplash.com/1200x400?{{ $post->image }}" alt="{{ $post->image }}" class="img-fluid ">
                            @endif
                            <div class="card-body">
                              <h6 class="card-text">{{ $post->title }}</h6>
                            </div>
                        </div>
                    </a>         
                    @endforeach
                </div>
                <div class="row mb-3 shadow p-3 d-flex justify-content-center">
                    <h5 class="mb-4 text-center">Menu Baru Restry</h5>
                    @foreach ($posts_latest as $post)
                    <a href="/posts/{{ $post->slug }}" class="text-decoration-none text-dark ">
                        <div class="card mb-3 p-2">
                           @if($post->image)
                            <div style="max-height:150px; overflow:hidden">
                                <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->image}}" class="img-fluid ">
                            </div>
                            @else
                                <img src="https://source.unsplash.com/1200x400?{{ $post->image }}" alt="{{ $post->image }}" class="img-fluid ">
                            @endif
                            <div class="card-body">
                              <h6 class="card-text">{{ $post->title }}</h6>
                            </div>
                        </div>
                    </a>         
                    @endforeach
                </div>
                <div class="row mb-3 shadow p-3 d-flex justify-content-center">
                    <h5 class="mb-4 text-center">Terakhir Menu Diupdate</h5>
                    @foreach ($posts_category as $post)
                    <a href="/posts/{{ $post->slug }}" class="text-decoration-none text-dark ">
                        <div class="card mb-3 p-2" >
                            @if($post->image)
                            <div style="max-height:150px; overflow:hidden">
                                <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->image}}" class="img-fluid ">
                            </div>
                            @else
                                <img src="https://source.unsplash.com/400x200?{{ $post->image }}" alt="{{ $post->image }}" class="img-fluid"> 
                            @endif
                            <div class="card-body">
                              <h6 class="card-text">{{ $post->title }}</h6>
                            </div>
                        </div>
                    </a>         
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection 