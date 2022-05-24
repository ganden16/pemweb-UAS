@extends('layouts.main')

@section('container')
    <div class="container-fluid">
        <div class="row" >
          <div class="col col-lg-10 col-md-10 mb-5 mt-5" style="margin:auto;">
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                    @if($user->image)                         
                        <img src="{{ asset('storage/' . $user->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                        @else
                        <img src="https://source.unsplash.com/300x300?{{ $user->name }}" class=" rounded-circle profile-user-img img-responsive img-circle"
                    @endif
                </div>
                <h3 class="profile-username ">{{ $user->username }}</h3>
                <p class="text-muted ">Bergabung Sejak {{ $user->created_at }}</p>
                <hr>
                <strong>
                    <i class="bi bi-person-circle"></i>
                  Nama
                </strong>
                <p class="text-muted">
                  {{ $user->name }}
                </p>
                <hr>
                <strong>
                  <i class="bi bi-geo-alt-fill"></i>
                  Alamat
                </strong>
                <p class="text-muted">
                  {{ $user->address }}, {{ $user->city }}
                </p>
                <hr>
                <strong>
                  <i class="bi bi-envelope-fill"></i>
                  Email
                </strong>
                <p class="text-muted">
                    {{ $user->email }}
                </p>
                <hr>
                <strong>
                    <i class="bi bi-telephone-fill"></i>
                  No.Telp
                </strong>
                <p class="text-muted">
                  {{ $user->telp }}
                </p>
                <hr>
                <a href="" class="btn btn-warning btn-block">Setting</a>
              </div>
            </div>      
          </div>
      
    
@endsection