<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Medico extends Model
{
    use HasFactory;
    protected $table = "medicos";
    protected $primaryKey = "medico_id";
    protected $fillable = [
        "medico_id",
        "nome",
        "especialidade",
        "crm",
        "telefone",
        "email"
    ];

 
    public function consulta(): HasMany
    {
        return $this->hasMany(Consulta::class, 'medico_id');
    }
}
