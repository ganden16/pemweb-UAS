@extends('layouts.main')

@section('container')
@dd($posts)
        <!-- Halaman Awal-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">Selamat Datang Di Restry.com<br> yuk coba Resep masakan dari kami !</div>
                <div class="masthead-heading text-uppercase"><a href="/posts">Cari Resep Disini</a></div>
            </div>
        </header>
        <!-- Resep Populer-->
        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Resep Terpopuler Dari Kami</h2>
                    <h3 class="section-subheading text-muted">Yuk coba Resep makanan terpopuler dibawah ini</h3>
                </div>
                <div class="container">
                    <div class="row"> 
                        @foreach ($posts as $post)
                            <div class="col-md-4 mb-3">
                                <div class="card" id="{{ $post->slug }}">
                                    <div class="position-absolute px-3 py-2 " style="background-color:rgba(0, 0, 0, 0.5)"><a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none text-white">{{ $post->category->name }}</a>
                                    </div>
                                    @if($post->image)                         
                                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                                    @else
                                    <img src="https://source.unsplash.com/500x500?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                                    @endif
                                    <div class="card-body d-inline">
                                        <h4 class="">{{ $post->id }}</h4>
                                        <h5 class="card-title">{{ $post->title }}</h5>
                                        <p class="class-text">{{ $post->excerpt }}</p>
                                        @if(request()->category)
                                        <form action="/posts/{{ $post->slug }}">
                                            <input type="hidden" name="category" value="{{ request()->category }}"> 
                                            <button type="submit" class="btn btn-warning">Read More</button>
                                        </form>
                                        @else
                                        <a href="/posts/{{ $post->slug }}" class="text-decoration-none btn btn-warning">Read More</a>
                                        @endif
                                    </div>
                                </div>
                            </div>  
                        @endforeach
                    </div>
                </div>
                <div class="row g-5">
                    
                </div>
            </div>
        </section>
        <!-- Tentang kami-->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="text-center">
                    <h2>KONTAK KAMI</h2>
                    <h3 class="section-subheading text-muted">Ada saran atau rekomendasi menu resep, yuk hubungi kami</h3>
                    <h5>Res.try@WAPFIVE.com<br/>Res.try.Facebook<br/>Res.try.Instagram</h5><br/><br/>
                    <h3 class="section-subheading text-muted">Present By Res.try@WAPFIVE.com</h3>
                </div>
            </div>
        </section>
@endsection