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
        Schema::create('estoque_medicamentos', function (Blueprint $table) {
            $table->id('movimentacao_id');
            $table->unsignedBigInteger('medicamento_id');
            $table->foreign('medicamento_id')->references('medicamento_id')->on('medicamentos');
            $table->string('tipo_movimentacao'); // Entrada ou Saída
            $table->integer('quantidade');
            $table->timestamp('data_movimentacao')->useCurrent();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('estoque_medicamentos');
    }
};
