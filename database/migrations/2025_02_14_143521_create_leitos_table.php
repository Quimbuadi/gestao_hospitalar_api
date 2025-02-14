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
        Schema::create('leitos', function (Blueprint $table) {
            $table->id('leito_id');
            $table->string('numero_leito');
            $table->unsignedBigInteger('categoria_leito_id');
            $table->foreign('categoria_leito_id')->references('categoria_leito_id')->on('categorias_leitos');
            $table->string('status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('leitos');
    }
};
