<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       DB::table('users')->insert(array(
        [
         'name' => 'Danil',
         'email' => 'danil@yeahbutstill.world',
         'password' => bcrypt('semlekum'),
         'foto' => 'user.png',
         'level' => 1
        ],
        [
         'name' => 'Yulisma',
         'email' => 'yulisma@yeahbutstill.world',
         'password' => bcrypt('semlekum'),
         'foto' => 'user.png',
         'level' => 2
        ]
      ));

    }
}
