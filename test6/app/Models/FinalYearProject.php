<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FinalYearProject extends Model
{
    use HasFactory;

    /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'judul',
        'namapenulis',
        'deskripsi',
        'tahunterbit',
        'stock',
    ];

    public $timestamps = false;
    public $updated_at = false;
}