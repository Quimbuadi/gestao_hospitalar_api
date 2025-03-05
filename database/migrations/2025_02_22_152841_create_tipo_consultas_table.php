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
        Schema::create('tipo_consultas', function (Blueprint $table) {
            $table->id("tipo_consulta_id");
            $table->string('nome');
            $table->text('descricao')->nullable();
            $table->integer('duracao')->nullable();
            // $table->decimal('preco', 10, 2)->nullable();
            $table->unsignedBigInteger('especialidade_id');
            $table->foreign('especialidade_id')->references('especialidade_id')->on('especialidades');
            $table->boolean('ativo')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tipo_consultas');
    }
};
