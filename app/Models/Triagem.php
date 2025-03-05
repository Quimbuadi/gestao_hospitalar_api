<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Triagem extends Model
{
    use HasFactory;

    protected $table = "triagens";

    protected $primaryKey = "triagem_id";

    protected $fillable = [
        "triagem_id",
        "paciente_id",
        "temperatura",
        "tensao_arterial",
        "peso",
        "frequencia_respiratoria",
        "frequencia_cardiaca",
    ];

    public function paciente(): BelongsTo
    {
        return $this->belongsTo(Paciente::class, 'paciente_id');
    }

}
