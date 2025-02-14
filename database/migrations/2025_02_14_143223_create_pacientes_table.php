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
        Schema::create('pacientes', function (Blueprint $table) {
            $table->id('paciente_id');
            $table->string('nome');
            $table->date('data_nascimento');
            $table->char('sexo', 1)->nullable();
            $table->string('endereco')->nullable();
            $table->string('telefone', 15)->nullable();
            $table->string('email')->nullable();
            $table->string('cpf', 14)->unique();
            $table->string('rg', 20)->unique();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pacientes');
    }
};
