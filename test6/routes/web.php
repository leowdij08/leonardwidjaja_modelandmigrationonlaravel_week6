<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CatalogController;

// Route utama yang mengarah ke halaman katalog
Route::get('/', [CatalogController::class, 'index'])->name('home');

// Route katalog (halaman publik untuk melihat daftar buku, CD, dll.)
Route::get('/catalog', [CatalogController::class, 'index'])->name('catalog.index');

