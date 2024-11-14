<?php

namespace Database\Seeders;

use App\Models\Journals;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Carbon\Carbon;

class JournalSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Journals::create(
            [
                'judul' => 'Analisis Teknologi Blockchain',
                'namapenulis1' => 'Penulis Teknologi',
                'ringkasanjurnal' => 'Penelitian ini membahas penggunaan teknologi blockchain dalam industri keuangan.',
                'linkaksesjurnal' => 'https://journalwebsite.com/blockchain-2023',
                'tahunterbit' => Carbon::parse('2023-02-15'),
            ]);
        Journals::create(
            [
                'judul' => 'Pemanfaatan AI dalam Medis',
                'namapenulis1' => 'Penulis Medis',
                'ringkasanjurnal' => 'Studi mengenai implementasi kecerdasan buatan dalam diagnosis medis.',
                'linkaksesjurnal' => 'https://journalwebsite.com/ai-medis',
                'tahunterbit' => Carbon::parse('2022-07-20'),
            ]);
        Journals::create(
            [
                'judul' => 'Dampak Sosial Media pada Masyarakat',
                'namapenulis1' => 'Penulis Sosial',
                'ringkasanjurnal' => 'Penelitian tentang pengaruh sosial media terhadap kehidupan sosial dan mental.',
                'linkaksesjurnal' => 'https://journalwebsite.com/sosial-media-impact',
                'tahunterbit' => Carbon::parse('2021-05-10'),
        ]);
    }
}
