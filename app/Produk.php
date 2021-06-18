<?php

namespace Anoa;

use Illuminate\Database\Eloquent\Model;

class Produk extends Model
{
   protected $table = 'produk';
   protected $primaryKey = 'id_produk';
   
   public function kategori(){
      return $this->belongsTo('Anoa\Kategori');
   }
}
