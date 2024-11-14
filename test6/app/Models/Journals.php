<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Journals extends Model
{
    use HasFactory;

    /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'juduljurnal',
        'namapenulis1',
        'ringkasanjurnal',
        'linkaksesjurnal',
        'tahunterbit',
    ];

    public $timestamps = false;
    public $updated_at = false;
}