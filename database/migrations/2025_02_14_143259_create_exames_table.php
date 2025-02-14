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
        Schema::create('exames', function (Blueprint $table) {
            $table->id('exame_id');
            $table->unsignedBigInteger('paciente_id');
            $table->unsignedBigInteger('medico_responsavel');
            $table->foreign('paciente_id')->references('paciente_id')->on('pacientes');
            $table->string('tipo_exame');
            $table->dateTime('data_exame');
            $table->text('resultado')->nullable();
            $table->foreign('medico_responsavel')->references('medico_id')->on('medicos');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('exames');
    }
};
