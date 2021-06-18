<?php

namespace Anoa;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    protected $table = 'kategori';
	protected $primaryKey = 'id_kategori';
	
	public function produk(){
		return $this->hasMany('Anoa\Produk', 'id_kategori');
	}
}
