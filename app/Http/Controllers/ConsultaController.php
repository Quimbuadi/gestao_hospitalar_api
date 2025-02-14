<?php

namespace App\Http\Controllers;

use App\Models\Consulta;
use Illuminate\Http\Request;

class ConsultaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
       return Consulta::with(['medico:medico_id,nome', 'paciente:paciente_id,nome'])
            ->get();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'medico_id' => 'required|integer',
            'paciente_id' => 'required|integer',
            'data_consulta' => 'required|date',
            'status' => 'required|string|max:255',
            'observacoes' => 'nullable|string',
        ]);

        $consulta = new Consulta([
            'medico_id' => $request->medico_id,
            'paciente_id' => $request->paciente_id,
            'data_consulta' => $request->data_consulta,
            'status' => $request->status,
            'observacoes' => $request->observacoes,
        ]);

        $consulta->save();

        return response()->json($consulta, 201);
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
