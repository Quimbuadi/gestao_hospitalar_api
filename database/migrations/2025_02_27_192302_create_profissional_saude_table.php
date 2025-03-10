<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('profissional_saude', function (Blueprint $table) {
            $table->id("profissional_saude_id");
            $table->string('nome');
            $table->string('tipo_profissional');
            $table->string('telefone')->nullable();
            $table->string('email')->unique()->nullable();
            $table->string('data_nascimento');
            $table->string('sexo')->enum(['M', 'F']);
            $table->string('endereco')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('profissional_saude');
    }
};
