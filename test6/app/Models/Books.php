<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Books extends Model
{
    use HasFactory;

    /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'judul',
        'namapenerbit',
        'namapenulis',
        'deskripsibuku',
        'tahunterbit',
        'stock',
    ];

    public $timestamps = false;
    public $updated_at = false;
}