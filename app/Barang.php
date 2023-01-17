<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    public $table = "barang";
    public $timestamps = false;
    protected $fillable = [
        'kode_barang', 'created_by', 'nama_barang', 'deskripsi', 'stok_barang', 'harga_barang'
    ];
}
