<?php

namespace Database\Seeders;

use App\Models\FinalYearProject;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Carbon\Carbon;

class FinalYearProjectSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        FinalYearProject::create(
            [
                'judul' => 'Implementasi Sistem Pakar pada Diagnosa Penyakit Tanaman',
                'namapenulis' => 'Penulis Pertanian',
                'deskripsi' => 'Sistem pakar ini digunakan untuk mendiagnosa penyakit pada tanaman menggunakan metode berbasis aturan.',
                'tahunterbit' => Carbon::parse('2022-12-01'),
                'stock' => 5,
            ]);
        FinalYearProject::create(
            [
                'judul' => 'Aplikasi Monitoring Kualitas Udara Berbasis IoT',
                'namapenulis' => 'Penulis IoT',
                'deskripsi' => 'Proyek akhir ini mengembangkan aplikasi untuk memantau kualitas udara menggunakan sensor IoT.',
                'tahunterbit' => Carbon::parse('2023-06-15'),
                'stock' => 3,
            ]);
        FinalYearProject::create(
            [
                'judul' => 'Pengembangan Aplikasi Edukasi Anak dengan Teknologi AR',
                'namapenulis' => 'Penulis AR',
                'deskripsi' => 'Proyek ini memanfaatkan teknologi Augmented Reality untuk menciptakan aplikasi edukasi yang interaktif bagi anak-anak.',
                'tahunterbit' => Carbon::parse('2021-08-25'),
                'stock' => 7,
            ]);
    }
}
