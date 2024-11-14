<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
    Schema::create('journals', function (Blueprint $table) {
        $table->id();
        $table->string('judul');
        $table->string('namapenulis1');
        $table->text('ringkasanjurnal');
        $table->string('linkaksesjurnal');
        $table->date('tahunterbit');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('journals');
    }
};
