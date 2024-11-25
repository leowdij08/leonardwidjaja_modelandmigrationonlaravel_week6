-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2024 at 07:07 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapenerbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapenulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsibuku` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunterbit` date NOT NULL,
  `stock` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `judul`, `namapenerbit`, `namapenulis`, `deskripsibuku`, `tahunterbit`, `stock`) VALUES
(1, 'Pemrograman Web dengan Laravel', 'Penerbit Laravel', 'Penulis Laravel', 'Panduan lengkap membangun aplikasi web menggunakan Laravel.', '2022-08-01', 15),
(2, 'Dasar-Dasar JavaScript', 'Penerbit JavaScript', 'Penulis JavaScript', 'Referensi penting untuk memahami dasar-dasar JavaScript.', '2021-03-10', 7),
(3, 'Pengembangan Aplikasi Mobile', 'Penerbit Mobile', 'Penulis Mobile', 'Buku panduan untuk mengembangkan aplikasi mobile dengan berbagai teknologi.', '2023-05-25', 12);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_d_s`
--

CREATE TABLE `c_d_s` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapenerbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapenulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunterbit` date NOT NULL,
  `stock` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_d_s`
--

INSERT INTO `c_d_s` (`id`, `judul`, `namapenerbit`, `namapenulis`, `deskripsi`, `tahunterbit`, `stock`) VALUES
(1, 'Belajar Laravel', 'Penerbit A', 'Penulis A', 'Panduan lengkap untuk belajar Laravel dari dasar hingga mahir.', '2023-01-15', 10),
(2, 'Pemrograman PHP', 'Penerbit B', 'Penulis B', 'Buku referensi untuk memahami pemrograman PHP.', '2022-06-10', 5),
(3, 'Dasar-Dasar Database', 'Penerbit C', 'Penulis C', 'Mengupas dasar-dasar manajemen database dan SQL.', '2021-09-25', 8);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `final_year_projects`
--

CREATE TABLE `final_year_projects` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapenulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunterbit` date NOT NULL,
  `stock` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_year_projects`
--

INSERT INTO `final_year_projects` (`id`, `judul`, `namapenulis`, `deskripsi`, `tahunterbit`, `stock`) VALUES
(1, 'Implementasi Sistem Pakar pada Diagnosa Penyakit Tanaman', 'Penulis Pertanian', 'Sistem pakar ini digunakan untuk mendiagnosa penyakit pada tanaman menggunakan metode berbasis aturan.', '2022-12-01', 5),
(2, 'Aplikasi Monitoring Kualitas Udara Berbasis IoT', 'Penulis IoT', 'Proyek akhir ini mengembangkan aplikasi untuk memantau kualitas udara menggunakan sensor IoT.', '2023-06-15', 3),
(3, 'Pengembangan Aplikasi Edukasi Anak dengan Teknologi AR', 'Penulis AR', 'Proyek ini memanfaatkan teknologi Augmented Reality untuk menciptakan aplikasi edukasi yang interaktif bagi anak-anak.', '2021-08-25', 7);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE `journals` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapenulis1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ringkasanjurnal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkaksesjurnal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunterbit` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `judul`, `namapenulis1`, `ringkasanjurnal`, `linkaksesjurnal`, `tahunterbit`) VALUES
(1, 'Analisis Teknologi Blockchain', 'Penulis Teknologi', 'Penelitian ini membahas penggunaan teknologi blockchain dalam industri keuangan.', 'https://journalwebsite.com/blockchain-2023', '2023-02-15'),
(2, 'Pemanfaatan AI dalam Medis', 'Penulis Medis', 'Studi mengenai implementasi kecerdasan buatan dalam diagnosis medis.', 'https://journalwebsite.com/ai-medis', '2022-07-20'),
(3, 'Dampak Sosial Media pada Masyarakat', 'Penulis Sosial', 'Penelitian tentang pengaruh sosial media terhadap kehidupan sosial dan mental.', 'https://journalwebsite.com/sosial-media-impact', '2021-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_30_074558_create_products_table', 1),
(5, '2024_10_31_005336_create_books_table', 1),
(6, '2024_10_31_005423_create_journals_table', 1),
(7, '2024_11_14_014051_create__c_d_table', 1),
(8, '2024_11_14_014104_create_newspaper_table', 1),
(9, '2024_11_14_014125_create_finalyearprojects_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newspapers`
--

CREATE TABLE `newspapers` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapenerbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapenulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunterbit` date NOT NULL,
  `stock` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newspapers`
--

INSERT INTO `newspapers` (`id`, `judul`, `namapenerbit`, `namapenulis`, `deskripsi`, `tahunterbit`, `stock`) VALUES
(1, 'Berita Teknologi Terbaru', 'Penerbit Teknologi', 'Penulis Teknologi', 'Kumpulan berita terkini tentang perkembangan teknologi.', '2024-10-05', 10),
(2, 'Ekonomi dan Bisnis', 'Penerbit Bisnis', 'Penulis Ekonomi', 'Ulasan mendalam tentang perkembangan ekonomi dan bisnis.', '2024-08-22', 8),
(3, 'Sosial dan Politik', 'Penerbit Sosial', 'Penulis Politik', 'Analisis terkini mengenai situasi sosial dan politik di dunia.', '2024-09-15', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0DBdPKsBMOA8af5Zb5QVFjgurmIUE4cTIRYN0NSC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibThIRnp5MElWSElOZUp1VDh3cXBvRFp0d3VCV0ZRR1JWaDNCN21qVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRhbG9nP2NhdGVnb3J5PWZpbmFsX3llYXJfcHJvamVjdHMmc29ydD1kZXNjIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731559832),
('833RsK6IvUdSaeqTNGJtedrPjDoLWkeeoioec0vU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlJKYTZuYW94TWdGd1dham1IaDVuRHNVeVp2Z2RWakNBYndYYTU2QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRhbG9nP2NhdGVnb3J5PWpvdXJuYWxzJnNvcnQ9YXNjIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731573516),
('qBwua9aFapf1CpVstSBfHF4HSdMLA0qqlb78vLHS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1ZEc0VVWTA4VldCS2hBVk1YdjNJZE1WUWxKNDhDUWo5bGxXM3lRNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRhbG9nP2NhdGVnb3J5PWZpbmFsX3llYXJfcHJvamVjdHMmc29ydD1kZXNjIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731552573);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `c_d_s`
--
ALTER TABLE `c_d_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `final_year_projects`
--
ALTER TABLE `final_year_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newspapers`
--
ALTER TABLE `newspapers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `c_d_s`
--
ALTER TABLE `c_d_s`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `final_year_projects`
--
ALTER TABLE `final_year_projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `newspapers`
--
ALTER TABLE `newspapers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
