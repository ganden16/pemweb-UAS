@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">All Users</h1>
    </div>
    
    @if(session()->has('success'))
    <div class="alert alert-success alert-dismissible fade show col-lg-6" role="alert">  
        {{ session('success') }} 
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>  
    @endif
    <div class="table-responsive col-lg-12">
        <table class="table table-striped table-sm">
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">Name</th>
                    <th scope="col">Username</th>
                    <th scope="col">Email</th>
                    <th scope="col">Access</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)            
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ user->name }}</td>
                        <td>{{ user->username }}</td>
                        <td>{{ user->email }}</td>
                        <td>@if(user->name) {{ "Admin" }} @else {{ "User" }} @endif </td>
                        <td>
                            <a href="/dashboard/users/{{ user->id }}" class="badge bg-info"><span data-feather="eye"></span></a>
                            <a href="/dashboard/users/{{ user->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                            <form action="/dashboard/users/{{ user->id }}" method="post" class="d-inline">
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