<?php

namespace Database\Seeders;

use App\Models\Books;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Carbon\Carbon;

class BookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Books::create(
            [
                'judul' => 'Pemrograman Web dengan Laravel',
                'namapenerbit' => 'Penerbit Laravel',
                'namapenulis' => 'Penulis Laravel',
                'deskripsibuku' => 'Panduan lengkap membangun aplikasi web menggunakan Laravel.',
                'tahunterbit' => Carbon::parse('2022-08-01'),
                'stock' => 15,
            ]);
        Books::create([
                'judul' => 'Dasar-Dasar JavaScript',
                'namapenerbit' => 'Penerbit JavaScript',
                'namapenulis' => 'Penulis JavaScript',
                'deskripsibuku' => 'Referensi penting untuk memahami dasar-dasar JavaScript.',
                'tahunterbit' => Carbon::parse('2021-03-10'),
                'stock' => 7,
        ]);
        Books::create([
                'judul' => 'Pengembangan Aplikasi Mobile',
                'namapenerbit' => 'Penerbit Mobile',
                'namapenulis' => 'Penulis Mobile',
                'deskripsibuku' => 'Buku panduan untuk mengembangkan aplikasi mobile dengan berbagai teknologi.',
                'tahunterbit' => Carbon::parse('2023-05-25'),
                'stock' => 12,
        ]);
    }
}
