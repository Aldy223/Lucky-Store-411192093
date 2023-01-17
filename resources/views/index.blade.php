@extends('layout/main')


@section('container')
<title>Welcome To My Website </title>
    <div class="container">
        <div class="row">
            <div class="col-12">
            <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                <h2 class="text-center mt-3">Selamat Datang!</h2>
                <h6 class="text-center">Hi, Perkenalkan Saya Website Untuk Mendata Barang Distributor cocok untuk anda yang berjualan sepeti di toko-toko retail. Terimakasih sudah menggunakan website kami.
                    silahakan register terlebih dahulu jika tidak mempunyai user dan jika sudah memiliki user silahkan login
                </h6>
                <div class="text-center">
                <img src="{{URL::asset('/images/2.png')}}" class="img-center" width="800" height="400" class="img-fluid">
               </div>
            </div>
        </div>
      </div>
@endsection
