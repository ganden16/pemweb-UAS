@extends('layouts.main')

@section('container')
@if ($posts->count())
        <div class="container">
            <div class="row">
                @foreach ($posts as $post)
                    <div class="col-md-4 mb-3">
                        <div class="card" >
                            <div class="position-absolute px-3 py-2 " style="background-color:rgba(0, 0, 0, 0.5)"><a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none text-white">{{ $post->category->name }}</a></div>
                            @if($post->image)                         
                                <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                            @else
                            <img src="https://source.unsplash.com/500x500?{{ $post->category->name }}" class="card-img-top"
                            @endif
                            alt="{{ $post->category->name }}">
                            <div class="card-body">
                                <h5 class="card-title">{{ $post->title }}</h5>
                                <p class="card-text">
                                    <small class="text-muted">
                                        By. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }} </a>
                                    </small>
                                </p>
                                <p class="class-text">{{ $post->excerpt }}</p>
                                <a href="/posts/{{ $post->slug }}" class="text-decoration-none btn btn-primary">Read More</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    @else
        <p class="text-center fs-4">No Post Found.</p>
    @endif   
@endsection