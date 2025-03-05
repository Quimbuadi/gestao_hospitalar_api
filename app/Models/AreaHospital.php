<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AreaHospital extends Model
{
    use HasFactory;

    protected $table = "areas_hospital";

    protected $primaryKey = "area_hospital_id";

    protected $fillable = [
        'descricao',
        'estado'
    ];
}
