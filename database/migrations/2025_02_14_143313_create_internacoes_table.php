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
        Schema::create('internacoes', function (Blueprint $table) {
            $table->id('internacao_id');
            $table->unsignedBigInteger('paciente_id');
            $table->unsignedBigInteger('medico_responsavel');
            $table->foreign('paciente_id')->references('paciente_id')->on('pacientes');
            $table->dateTime('data_entrada');
            $table->dateTime('data_saida')->nullable();
            $table->string('leito')->nullable();
            $table->foreign('medico_responsavel')->references('medico_id')->on('medicos');
            $table->string('status')->nullable();
            $table->text('observacoes')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('internacoes');
    }
};
