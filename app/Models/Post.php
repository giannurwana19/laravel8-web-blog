<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    // protected $fillable = ['title', 'excerpt', 'body'];

    /**
     * The attributes that aren't mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    // kita bisa ganti dari user jadi author
    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
