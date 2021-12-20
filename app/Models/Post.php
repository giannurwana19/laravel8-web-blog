<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post
{
    private static $blogPosts = [
        [
            'title' => 'Judul Post Pertama',
            'slug' => 'judul-post-pertama',
            'author' => 'Gian',
            'body' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eum, corporis cumque itaque culpa nisi quis voluptatem neque tenetur repellendus, nulla mollitia. Perferendis quasi cumque tempore natus ex nostrum illo, soluta asperiores rem. Beatae, sequi placeat a impedit consequuntur voluptatem eaque fuga reiciendis quibusdam? Voluptate harum dolorum expedita facilis quo adipisci!'
        ],
        [
            'title' => 'Judul Post Kedua',
            'slug' => 'judul-post-kedua',
            'author' => 'Andi',
            'body' => 'soluta asperiores rem. Beatae, sequi placeat a impedit consequuntur voluptatem eaque fuga reiciendis quibusdam? Voluptate harum dolorum expedita facilis quo adipisci! Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eum, corporis cumque itaque culpa nisi quis voluptatem neque tenetur repellendus, nulla mollitia. Perferendis quasi cumque tempore natus ex nostrum illo, soluta asperiores rem. Beatae, sequi placeat a impedit consequuntur voluptatem eaque fuga reiciendis quibusdam? Voluptate harum dolorum expedita facilis quo adipisci!'
        ],
        [
            'title' => 'Judul Post Pertama',
            'slug' => 'judul-post-ketiga',
            'author' => 'Lukman',
            'body' => 'quibusdam? Voluptate Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eum, corporis cumque itaque culpa nisi quis voluptatem neque tenetur repellendus, nulla mollitia. Perferendis quasi cumque tempore natus ex nostrum illo, soluta asperiores rem. Beatae, sequi placeat a impedit consequuntur voluptatem eaque fuga reiciendis quibusdam? Voluptate harum dolorum expedita facilis quo adipisci! dolor sit, amet consectetur adipisicing elit. Eum, corporis cumque itaque culpa nisi quis voluptatem neque tenetur repellendus, nulla mollitia. Perferendis quasi cumque tempore natus ex nostrum illo, soluta asperiores rem. Beatae, sequi placeat a impedit consequuntur voluptatem eaque fuga reiciendis q'
        ],
    ];

    public static function all()
    {
        return collect(self::$blogPosts);
    }

    public static function find($slug)
    {
        $posts = static::all();

        return $posts->firstWhere('slug', $slug);
    }
}
