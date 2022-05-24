@extends('layouts.main')

@section('container')
    <div class="container-fluid">
        <div class="row">
            <div class="col col-lg-8 col-md-10 mb-5 mt-5" style="margin:auto;">
                <div class="card card-primary card-outline">
                    <div class="card-body box-profile">
                            <form method="post" action="/user/{{ $user->username }}" class="mb-5" enctype="multipart/form-data">
                                @method('put')
                                @csrf
                                <h3 class="profile-username text-center ">{{ $user->username }}</h3>
                                <div class="d-flex justify-content-center mt-3">
                                    @if($user->image)                         
                                        <img src="{{ asset('storage/' . $user->image) }}" alt="{{ $user->name }}" class="img-fluid img-circle rounded-circle profile-user-img img-responsive" onchange=previewImage()>
                                    @else
                                        <img src="https://source.unsplash.com/300x300?{{ $user->name }}" class=" rounded-circle profile-user-img img-responsive img-circle" >
                                    @endif
                                </div>
                                <div class="mb-5 col-lg-6 ">
                                    <label for="image" class="form-label"><h6>Foto User</h6></label>
                                    <input type="hidden" name="oldImage" value="{{ $user->image }}">
                                    @if($user->image)
                                     <img src="{{ asset('storage/' . $user->image ) }}" class="img-preview img-fluid mb-3 col-sm-5 ">
                                    @else
                                     <img class="img-preview img-fluid mb-3 col-sm-5">
                                    @endif
                                     <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image" onchange=previewImage()>
                                    @error('image')
                                      <div class="invalid-feedback">
                                          {{ $message }}
                                      </div>
                                    @enderror   
                                </div>
                                <div class="mb-3 col-lg-10">
                                    <label for="name" class="form-label"><h6>Nama</h6></label>
                                    <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name" required value="{{ old('name', $user->name) }}">
                                    @error('name')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror           
                                </div>
                                <div class="mb-3 col-lg-10">
                                    <label for="email" class="form-label"><h6>Email</h6></label>
                                    <input type="text" class="form-control @error('email') is-invalid @enderror" id="email" name="email" required value="{{ old('email', $user->email) }}">
                                    @error('email')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror           
                                </div>
                                <div class="mb-3 col-lg-10">
                                    <label for="address" class="form-label"><h6>Jalan</h6></label>
                                    <input type="text" class="form-control @error('address') is-invalid @enderror" id="address" name="address" required value="{{ old('address', $user->address) }}">
                                    @error('address')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror           
                                </div>
                                <div class="mb-3 col-lg-10">
                                    <label for="city" class="form-label"><h6>Kota/Kabupaten</h6></label>
                                    <input type="text" class="form-control @error('city') is-invalid @enderror" id="city" name="city" required value="{{ old('city', $user->city) }}">
                                    @error('city')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror           
                                </div>
                                <div class="mb-3 col-lg-10">
                                    <label for="telp" class="form-label"><h6>No.Telp</h6></label>
                                    <input type="text" class="form-control @error('telp') is-invalid @enderror" id="telp" name="telp" required value="{{ old('telp', $user->telp) }}">
                                    @error('telp')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror           
                                </div>
                                <button type="submit" class="btn btn-warning" >Update User</button>
                            </form>
                        
                    </div>
                </div>      
            </div>
        </div>
    </div>

    <script>
        function previewImage(){
        //   const image = document.querySelector('#image');
        //   const imgPreview = document.querySelector('.img-preview');

        //   imgPreview.style.display = 'block';

        //   const ofReader = new fileReader();
        //   ofReader.readAsDataUrl(image.files[0]);

        //   ofReader.onload = function(ofREvent){
        //     imgPreview.src = ofREvent.target.result;
        //   }

          const image = document.querySelector('#image');
          const imgPreview = document.querySelector('.img-preview');
          imgPreview.style.display = 'block';
          const blob = URL.createObjectURL(image.files[0]);
          imgPreview.src = blob;
        }
    </script>
@endsection