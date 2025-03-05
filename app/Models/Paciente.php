<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Paciente extends Model
{
    use HasFactory;
    protected $table = "pacientes";
    protected $primaryKey = "paciente_id";
    protected $fillable = [
        'paciente_id',
        'nome',
        'data_nascimento',
        'sexo',
        'endereco',
        'telefone',
        'email',
        'grupo_sanguineo'
    ];
      /**
     * The function "consulta" establishes a BelongsTo relationship with the Consulta model in PHP.
     * 
     * @return BelongsTo A BelongsTo relationship is being returned.
     */
    public function consulta(): HasMany
    {
        return $this->hasMany(Consulta::class, 'paciente_id');
    }

    public function triagem(): HasMany
    {
        return $this->hasMany(Triagem::class, 'paciente_id');
    }
}
