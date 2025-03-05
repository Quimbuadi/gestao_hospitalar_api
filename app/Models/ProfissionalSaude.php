<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class ProfissionalSaude extends Model
{
    use HasFactory;
    protected $table = 'profissional_saude';

    protected $primaryKey = 'profissional_saude_id';

    protected $fillable = [
        'profissional_saude_id',
        'nome',
        'tipo_profissional',
        'telefone',
        'email',
        'data_nascimento',
        'sexo',
        'endereco'
    ];

    public function consulta(): HasMany
    {
        return $this->hasMany(Consulta::class, 'profissional_saude_id');
    }

}
