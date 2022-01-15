<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $with = ['author', 'category'];

    // protected $fillable = ['title', 'excerpt', 'body'];

    /**
     * The attributes that aren't mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];

    public function scopeFilter($query, array $filters)
    {
        // if ($filters['search'] ?? false) {
        //     return $query->where('title', 'like', '%' . $filters['search'] . '%')->orWhere('body', 'like', '%' . $filters['search'] . '%');
        // }

        $query->when($filters['search'] ?? false, function ($query, $search) {
            return $query->where('title', 'like', '%' . $search . '%')->orWhere('body', 'like', '%' . $search . '%');
        });

        $query->when($filters['category'] ?? false, function ($query, $category) {
            return $query->whereHas('category', function ($query) use ($category) {
                $query->where('slug', $category);
            });
        });

        $query->when($filters['author'] ?? false, fn ($query, $author) =>
        $query->whereHas('author', fn ($query) =>
        $query->where('username', $author)));
    }

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
