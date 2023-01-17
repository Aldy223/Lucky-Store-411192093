@extends('pelanggans.layout')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>411192093 DISTIBUTOR Pelanggan & Penjualan</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ route('pelanggans.create') }}">Tambah Pelanggan</a>
            </div>
        </div>
    </div>

    @if ($message = Session::get('success'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>
    @endif

    <table class="table table-bordered">
        <tr>
            <th>No</th>
            <th>Kode Pelanggan</th>
            <th>Nama Pelanggan</th>
            <th>Alamat</th>
            <th>Nama Kota</th>
            <th>No Telepon</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($pelanggans as $pelanggan)
        <tr>
            <td>{{ ++$i }}</td>
            <td>{{ $pelanggan->kode_pelanggan }}</td>
            <td>{{ $pelanggan->nama_pelanggan }}</td>
            <td>{{ $pelanggan->alamat }}</td>
            <td>{{ $pelanggan->nama_kota }}</td>
            <td>{{ $pelanggan->no_telepon }}</td>
            <td>
                <form action="{{ route('pelanggans.destroy',$pelanggan->id) }}" method="POST">

                    <a class="btn btn-info" href="{{ route('pelanggans.show',$pelanggan->id) }}">Show</a>

                    <a class="btn btn-primary" href="{{ route('pelanggans.edit',$pelanggan->id) }}">Edit</a>

                    @csrf
                    @method('DELETE')

                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </table>
    <div class="pull-right">
                <a class="btn btn-success" href="{{ route('pelanggans.create') }}">Tambah Penjual</a>
            </div>
    <table class="table table-bordered">
        <tr>
            <th>No</th>
            <th>No Penjual</th>
            <th>Tanggal</th>
            <th>Nama Barang</th>
            <th>Nama Penjual</th>
            <th>Kode Penjual</th>
            <th>Kode Barang</th>
            <th>Jumlah Barang</th>
            <th>Harga Barang</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($pelanggans as $penjualan)
        <tr>
            <td>{{ ++$i }}</td>
            <td>{{ $penjualan->tanggal }}</td>
            <td>{{ $penjualan->tanggal }}</td>
            <td>{{ $penjualan->tanggal }}</td>
            <td>{{ $penjualan->tanggal }}</td>
            <td>{{ $penjualan->tanggal }}</td>
            <td>{{ $penjualan->kode_tanggalbarang }}</td>
            <td>{{ $penjualan->tanggal }}</td>
            <td>{{ $penjualan->tanggal }}</td>
            <td>
                <form action="{{ route('pelanggans.destroy',$penjualan->id) }}" method="POST">

                    <a class="btn btn-info" href="{{ route('pelanggans.show',$penjualan->id) }}">Show</a>

                    <a class="btn btn-primary" href="{{ route('pelanggans.edit',$penjualan->id) }}">Edit</a>

                    @csrf
                    @method('DELETE')

                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </table>
</div>

{!! $pelanggans->render() !!}

@endsection