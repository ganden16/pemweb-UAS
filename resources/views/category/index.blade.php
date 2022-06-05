@extends('layouts.main')
<br><br><br>
@section('container')
<div class="container">
    <div class="row">
        @foreach ($categories as $category)         
        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 bg">
            <div class="card mb-4">
                <a href="/posts?category={{ $category->slug }}">
                    @if($category->image)                         
                    <img src="{{ asset('storage/' . $category->image) }}" alt="{{ $category->name }}" class="card-img-top" style="height: 350px;">
                    @else
                    <img src="https://source.unsplash.com/500x500?{{ $category->name }}" class="card-img-top" alt="{{ $category->name }}">
                    @endif
                    <div class="card-img-overlay d-flex align-items-center p-0 ">
                        <h5 class="card-title text-center flex-fill p-4 fs-3 text-white" style="background-color:rgba(0,0,0,0.5)">{{ $category->name }}</h5>
                    </div>
                </a>
            </div>
        </div>
        @endforeach
    </div>
</div
@endsection