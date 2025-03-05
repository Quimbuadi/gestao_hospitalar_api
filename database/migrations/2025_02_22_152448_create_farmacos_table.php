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
        Schema::create('farmacos', function (Blueprint $table) {
            $table->id("farmaco_id");
            $table->string('nome');
            // $table->string('principio_ativo')->nullable();
            $table->string('dosagem')->nullable();
            $table->string('forma_farmaceutica')->nullable();
            // $table->string('fabricante')->nullable();
            $table->date('validade')->nullable();
            // $table->decimal('preco', 10, 2)->nullable();
            $table->integer('estoque')->default(0);
            $table->text('descricao')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('farmacos');
    }
};
