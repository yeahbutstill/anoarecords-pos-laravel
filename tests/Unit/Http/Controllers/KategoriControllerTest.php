<?php

namespace Tests\Unit\Http\Controllers;

use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class KategoriControllerTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testExample()
    {
        $this->assertTrue(true);
    }
    public function testStore()
    {
        $kategori = factory(Kategori::class)->create();

        $response = $this->post(
            route('kategori.store'),
            [
                'nama_kategori' => str_random(10),
            ]
        );

        $response->assertStatus(302);
        $response->assertRedirect(route('kategori.index'));
    }
}
