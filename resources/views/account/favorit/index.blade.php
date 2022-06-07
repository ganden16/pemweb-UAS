@extends('layouts.main')
<br><br><br>
@section('container')
@if(session()->has('success'))
    <div class="alert alert-success alert-dismissible fade show col-lg-6" style="margin:10px auto;" role="alert">  
        {{ session('success') }} 
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>  
@endif
@if ($posts->count())
        <div class="container">
            <div class="row">
                @foreach ($posts as $post)
                    <div class="col-md-4 mb-3" id="{{ $post->slug }}">
                        <div class="card" >
                            <div class="position-absolute px-3 py-2 " style="background-color:rgba(0, 0, 0, 0.5)"><a href="/posts?category={{ $post->post->category->slug }}" class="text-decoration-none text-white">{{ $post->post->category->name }}</a></div>
                            @if($post->post->image)                         
                                <img src="{{ asset('storage/' . $post->post->image) }}" alt="{{ $post->post->category->name }}" class="img-fluid">
                            @else
                            <img src="https://source.unsplash.com/500x500?{{ $post->post->category->name }}" class="card-img-top"
                            @endif
                                    <form action="/favorit/{{ $post->id }}" method="post" class="d-flex justify-content-end">
                                        @method('delete')
                                        @csrf
                                        <input type="hidden" value="{{ $post->id }}" name="post_id">
                                        <button type="submit" class="btn">
                                            <i class="bi bi-heart-fill"></i>
                                        </button>
                                    </form>
                            <div class="card-body">
                                <h5 class="card-title">{{ $post->post->title }}</h5>
                                <p class="class-text">{{ $post->post->excerpt }}</p>
                                <form action="/posts/{{ $post->post->slug }}">
                                    <input type="hidden"  name="favorit" value="{{ true }}">
                                    <button type="submit" class="btn btn-warning">Read More</button>
                                </form>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    @else
        <p class="text-center fs-4">No Post Found.</p>
    @endif   
    <div class="d-flex justify-content-end">
        {{ $posts->links() }}
    </div>
@endsection