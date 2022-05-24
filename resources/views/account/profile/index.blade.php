@extends('layouts.main')

@section('container')
  @if(session()->has('success'))
    <div class="alert alert-success alert-dismissible fade show col-lg-6" style="margin:10px auto;" role="alert">  
        {{ session('success') }} 
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>  
  @endif
    <div class="container-fluid">
        <div class="row" >
          <div class="col col-lg-10 col-md-10 mb-5 mt-5" style="margin:auto;">
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                  <h3 class="profile-username mb-4">{{ $user->username }}</h3>
                  <div class="d-flex justify-content-center mt-3">
                    @if($user->image)                         
                        <img src="{{ asset('storage/' . $user->image) }}" alt="{{ $user->name }}" class="img-fluid img-circle rounded-circle profile-user-img img-responsive" onchange=previewImage()>
                    @else
                        <img src="https://source.unsplash.com/300x300?{{ $user->name }}" class=" rounded-circle profile-user-img img-responsive img-circle" >
                    @endif
                  </div>
                    
                <p class="text-muted mt-4 ">Bergabung Sejak {{ $user->created_at }}</p>
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
                <a href="/user/{{ $user->username }}/edit" class="btn btn-warning btn-block">Setting</a>
                </div>
                
              </div>
            </div>      
          </div>
      
    
@endsection