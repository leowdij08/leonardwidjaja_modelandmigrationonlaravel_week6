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
    Schema::create('books', function (Blueprint $table) {
        $table->id();
        $table->string('judulbuku');
        $table->string('namapenerbit');
        $table->string('namapenulis');
        $table->text('deskripsibuku');
        $table->date('tahunterbit');
        $table->integer('stock')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('books');
    }
};
