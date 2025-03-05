<?php

namespace App\Http\Controllers;

use App\Models\Triagem;
use Illuminate\Http\Request;

class TriagemController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $per_page = $request->query('per_page');
        return Triagem::with([
            'paciente:paciente_id,nome,sexo,data_nascimento'
        ])->paginate($per_page);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'paciente_id' => 'required|integer',
            'temperatura' => 'required|integer',
            'tensao_arterial' => 'nullable|numeric',
            'peso' => 'required|string',
            'frequencia_respiratoria' => 'nullable|integer',
            'frequencia_cardiaca' => 'nullable|integer',
        ]);

        $triagem = new Triagem([
            'paciente_id' => $request->paciente_id,
            'temperatura' => $request->temperatura,
            'tensao_arterial' => $request->tensao_arterial,
            'peso' => $request->peso,
            'frequencia_respiratoria' => $request->frequencia_respiratoria,
            'frequencia_cardiaca' => $request->frequencia_cardiaca,
        ]);

        $triagem->save();

        return response()->json($triagem, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
