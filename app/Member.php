<?php

namespace Anoa;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    protected $table = 'member';
	protected $primaryKey = 'id_member';

	public function penjualan(){
      return $this->hasMany('Anoa\Penjualan', 'id_supplier');
    }
}
