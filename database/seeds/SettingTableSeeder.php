<?php

use Illuminate\Database\Seeder;

class SettingTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('setting')->insert(array(
            [
                'nama_perusahaan' => 'Anoa Records',
                'alamat' => 'Jakarta, Indonesia. 12170',
                'telepon' => '085777809080',
                'logo' => 'anoa.jpg',
                'kartu_member' => 'card.png',
                'diskon_member' => '10',
                'tipe_nota' => '0'
            ]
        ));
    }
}
