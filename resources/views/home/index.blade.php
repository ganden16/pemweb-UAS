@extends('layouts.main')

@section('container')

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
                    <h2 class="section-heading text-uppercase">Resep Terbaru Dari Kami</h2>
                    <h3 class="section-subheading text-muted">Yuk coba Resep makanan terbaru dibawah ini</h3>
                </div>
                <div class="container">
                    <div class="row"> 
                        @foreach ($posts as $post)
                            <div class="col-md-4 mb-3">
                                <div class="card" id="{{ $post->slug }}">
                                    @if($post->image)                         
                                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                                    @else
                                    <img src="https://source.unsplash.com/500x500?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                                    @endif
                                    <div class="card-body d-inline">
                                        <h5 class="card-title">{{ $post->title }}</h5>
                                        <small class="d-block me-auto">{{ $posts[0]->created_at->diffForHumans() }}</small>
                                        <a href="/posts/{{ $post->slug }}" class="text-decoration-none btn btn-warning d-block mt-4">Read More</a>
                                    </div>
                                </div>
                            </div>  
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
        <hr>
        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center mb-3">
                    <h2 class="section-heading text-uppercase ">Terakhir Resep Diupdate</h2>
                </div>
                <div class="container">
                    <div class="row"> 
                        @foreach ($postsu as $post)
                            <div class="col-md-4 mb-3">
                                <div class="card" id="{{ $post->slug }}">
                                    @if($post->image)                         
                                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                                    @else
                                    <img src="https://source.unsplash.com/500x500?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                                    @endif
                                    <div class="card-body d-inline">
                                        <h5 class="card-title">{{ $post->title }}</h5>
                                        <small class="d-block me-auto">{{ $posts[0]->created_at->diffForHumans() }}</small>
                                        <a href="/posts/{{ $post->slug }}" class="text-decoration-none btn btn-warning d-block mt-4">Read More</a>
                                    </div>
                                </div>
                            </div>  
                        @endforeach
                    </div>
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