<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Gian Nurwana',
            'username' => 'giannurwana19',
            'email' => 'gian@gmail.com',
            'password' => bcrypt('password')
        ]);

        User::factory(3)->create();

        // User::create([
        //     'name' => 'Andi',
        //     'email' => 'andi@gmail.com',
        //     'password' => bcrypt('password')
        // ]);

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming',
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design',
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal',
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam, vel?',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique porro molestias maiores totam voluptas expedita blanditiis id, recusandae quo iusto perferendis iste ea placeat ut obcaecati tempora quam eaque aliquam earum. Incidunt quas et cupiditate, id, culpa harum a fugit eos facilis inventore eius, labore eaque maiores exercitationem earum rerum!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam, vel?',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique porro molestias maiores totam voluptas expedita blanditiis id, recusandae quo iusto perferendis iste ea placeat ut obcaecati tempora quam eaque aliquam earum. Incidunt quas et cupiditate, id, culpa harum a fugit eos facilis inventore eius, labore eaque maiores exercitationem earum rerum!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam, vel?',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique porro molestias maiores totam voluptas expedita blanditiis id, recusandae quo iusto perferendis iste ea placeat ut obcaecati tempora quam eaque aliquam earum. Incidunt quas et cupiditate, id, culpa harum a fugit eos facilis inventore eius, labore eaque maiores exercitationem earum rerum!',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam, vel?',
        //     'body' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique porro molestias maiores totam voluptas expedita blanditiis id, recusandae quo iusto perferendis iste ea placeat ut obcaecati tempora quam eaque aliquam earum. Incidunt quas et cupiditate, id, culpa harum a fugit eos facilis inventore eius, labore eaque maiores exercitationem earum rerum!',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
