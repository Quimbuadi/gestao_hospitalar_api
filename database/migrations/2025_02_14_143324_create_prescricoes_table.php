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
        Schema::create('prescricoes', function (Blueprint $table) {
            $table->id('prescricao_id');
            $table->unsignedBigInteger('paciente_id');
            $table->foreign('paciente_id')->references('paciente_id')->on('pacientes');
            $table->string('medicamento');
            $table->string('dosagem');
            $table->string('posologia');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('prescricoes');
    }
};
