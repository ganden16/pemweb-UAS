@extends('dashboard.layouts.main')

@section('container')
    
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Post By {{ $name }} </h1>
    </div>
    @if(session()->has('success'))
        <div class="alert alert-success col-lg-8" role="alert">
        {{ session('success') }}
        </div>
    @endif
    <div class="table-responsive col-lg-12">
        <a href="/dashboard/categories/create" class="btn btn-warning mb-3">Create New Category</a>
        <table class="table table-striped table-sm">
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">Title</th>
                    <th scope="col">Excerpt</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($posts as $post)            
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $post->title }}</td>
                        <td>{{ $post->excerpt }}</td>
                        <td class="col-lg-2">
                            <a href="/dashboard/posts/{{ $post->slug }}" class="badge bg-info d-inline "><span data-feather="eye"></span></a>
                            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="badge bg-warning d-inline"><span data-feather="edit"></span></a>
                            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                                @method('delete')
                                @csrf
                                <button class="badge bg-danger border-0 " onclick="return confirm('Yakin?')"><span data-feather="x-circle"></span></button>
                            </form>                       
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
  @endsection