@extends('layouts.main')

@section('container')
    <h1 class="mb-5">Halaman Profile</h1>
    <h3>Username : {{ $user->username }}</h3>
    <h3>Nama : {{ $user->name }}</h3>
    <h3>Email : {{ $user->email }}</h3>
    @if($user->image)                         
    <img src="{{ asset('storage/' . $user->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
    @else
    <img src="https://source.unsplash.com/500x500?{{ $user->name }}" class="img-thumbnail rounded-circle ms-5"
    @endif
@endsection