@extends('layouts.app')
@extends('layout.main')


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in!
                </div>
                <div class="col-12">
                <h2 class="text-center mt-3">Selamat Datang Sahabat :)</h2>
                <h6 class="text-center">Hi, Perkenalkan Saya Website Untuk Mendata Barang cocok untuk anda yang berjualan sepeti di toko-toko retail. Terimakasih sudah menggunakan website kami.</h6>
                <div class="text-center">
                <img src="{{URL::asset('/images/2.png')}}" class="img-center" width="700" height="700" class="img-fluid">
               </div>
            </div>
        </div>
    </div>
</div>
@endsection
