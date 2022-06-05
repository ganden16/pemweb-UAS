<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Favorit;
use App\Models\Category;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(5)->create();
        Favorit::factory(20)->create();
        Category::create([
            'name' => 'Daging',
            'slug' => 'daging',
        ]);
        Category::create([
            'name' => 'Sup',
            'slug' => 'sup',
        ]);
        Category::create([
            'name' => 'Ayam',
            'slug' => 'ayam',
        ]);
        Category::create([
            'name' => 'Ikan',
            'slug' => 'ikan',
        ]);
        Category::create([
            'name' => 'Sambal',
            'slug' => 'sambal',
        ]);
        Category::create([
            'name' => 'Tahu-Tempe',
            'slug' => 'tahu-tempe',
        ]);
        Category::create([
            'name' => 'Telur',
            'slug' => 'telur',
        ]);
        Category::create([
            'name' => 'Nasi',
            'slug' => 'nasi',
        ]);
        Post::factory(40)->create();
    }
}
