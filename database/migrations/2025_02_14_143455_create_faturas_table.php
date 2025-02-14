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
        Schema::create('faturas', function (Blueprint $table) {
            $table->id('fatura_id');
            $table->unsignedBigInteger('paciente_id');
            $table->foreign('paciente_id')->references('paciente_id')->on('pacientes');
            $table->decimal('valor', 10, 2);
            $table->timestamp('data_emissao')->useCurrent();
            $table->string('status_pagamento');
            $table->text('descricao')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('faturas');
    }
};
