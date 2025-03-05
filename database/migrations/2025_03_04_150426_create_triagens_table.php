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
        Schema::create('triagens', function (Blueprint $table) {
            $table->id("triagem_id");
            $table->unsignedBigInteger('paciente_id');
            $table->foreign('paciente_id')->references('paciente_id')->on('pacientes');
            $table->integer('temperatura');
            $table->integer('tensao_arterial')->nullable();
            $table->float('peso');
            $table->integer('frequencia_respiratoria')->nullable();
            $table->integer('frequencia_cardiaca')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('triagens');
    }
};
