<?php

namespace Database\Seeders;

use App\Models\CD;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Carbon\Carbon;

class CDSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

    //  protected $table = 'CDs';

    public function run(): void
    {
        CD::create(
            [
                'judul' => 'Belajar Laravel',
                'namapenerbit' => 'Penerbit A',
                'namapenulis' => 'Penulis A',
                'deskripsi' => 'Panduan lengkap untuk belajar Laravel dari dasar hingga mahir.',
                'tahunterbit' => Carbon::parse('2023-01-15'),
                'stock' => 10,
            ]);
        CD::create(
                [
                'judul' => 'Pemrograman PHP',
                'namapenerbit' => 'Penerbit B',
                'namapenulis' => 'Penulis B',
                'deskripsi' => 'Buku referensi untuk memahami pemrograman PHP.',
                'tahunterbit' => Carbon::parse('2022-06-10'),
                'stock' => 5,
            ]);
        CD::create(
                [
                'judul' => 'Dasar-Dasar Database',
                'namapenerbit' => 'Penerbit C',
                'namapenulis' => 'Penulis C',
                'deskripsi' => 'Mengupas dasar-dasar manajemen database dan SQL.',
                'tahunterbit' => Carbon::parse('2021-09-25'),
                'stock' => 8,
        ]);
    }
}
