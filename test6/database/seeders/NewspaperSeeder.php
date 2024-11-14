<?php

namespace Database\Seeders;

use App\Models\Newspapers;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Carbon\Carbon;

class NewspaperSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Newspapers::create(
            [
                'judul' => 'Berita Teknologi Terbaru',
                'namapenerbit' => 'Penerbit Teknologi',
                'namapenulis' => 'Penulis Teknologi',
                'deskripsi' => 'Kumpulan berita terkini tentang perkembangan teknologi.',
                'tahunterbit' => Carbon::parse('2024-10-05'),
                'stock' => 10,
            ]);
        Newspapers::create(
                [
                'judul' => 'Ekonomi dan Bisnis',
                'namapenerbit' => 'Penerbit Bisnis',
                'namapenulis' => 'Penulis Ekonomi',
                'deskripsi' => 'Ulasan mendalam tentang perkembangan ekonomi dan bisnis.',
                'tahunterbit' => Carbon::parse('2024-08-22'),
                'stock' => 8,
            ]);
        Newspapers::create(
                [
                'judul' => 'Sosial dan Politik',
                'namapenerbit' => 'Penerbit Sosial',
                'namapenulis' => 'Penulis Politik',
                'deskripsi' => 'Analisis terkini mengenai situasi sosial dan politik di dunia.',
                'tahunterbit' => Carbon::parse('2024-09-15'),
                'stock' => 5,
            ]);
    }
}
