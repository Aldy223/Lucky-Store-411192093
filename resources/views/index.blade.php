@extends('layout/main')


@section('container')
<title>Welcome To My Website </title>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="text-center mt-3">Selamat Datang Sahabat :)</h2>
                <h6 class="text-center">Hi, Perkenalkan Saya Website Untuk Mendata Barang cocok untuk anda yang berjualan sepeti di toko-toko retail. Terimakasih sudah menggunakan website kami.</h6>
                <div class="text-center">
                <img src="{{URL::asset('/images/2.png')}}" class="img-center" width="1200" height="700" class="img-fluid">
               </div>
            </div>
        </div>
      </div>
@endsection
