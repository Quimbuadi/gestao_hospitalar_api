<?php

namespace App\Http\Controllers;

use App\Models\Consulta;
use Illuminate\Http\Request;

class ConsultaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $per_page = $request->query('per_page');
        return Consulta::with([
            'profissionalSaude:profissional_saude_id,nome',
            'paciente:paciente_id,nome',
            'tipoConsulta:tipo_consulta_id,nome',
            'tipoServico:tipo_servico_id,nome'
        ])
            ->paginate($per_page);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'profissional_saude_id' => 'required|integer',
            'paciente_id' => 'required|integer',
            'tipo_consulta_id' => 'required|integer',
            'tipo_servico_id' => 'required|integer',
            'data_consulta' => 'required|date',
            // 'status' => 'required|string|max:255',
            'prioridade' => 'required|string',
            'observacoes' => 'nullable|string',
        ]);

        $consulta = new Consulta([
            'profissional_saude_id' => $request->profissional_saude_id,
            'paciente_id' => $request->paciente_id,
            'data_consulta' => $request->data_consulta,
            'tipo_consulta_id' => $request->tipo_consulta_id,
            'tipo_servico_id' => $request->tipo_servico_id,
            'prioridade' => $request->prioridade,
            // 'status' => $request->status,
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
        $consulta = Consulta::with(['medico:profissional_saude_id,nome', 'paciente:paciente_id,nome'])
            ->findOrFail($id);
        return response()->json($consulta);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'profissional_saude_id' => 'integer',
            'paciente_id' => 'integer',
            'tipo_consulta_id' => 'integer',
            'tipo_servico_id' => 'integer',
            'data_consulta' => 'date',
            'status' => 'string|max:255',
            'prioridade' => 'nullable|string',
            'observacoes' => 'nullable|string',
        ]);

        $consulta = Consulta::findOrFail($id);

        $consulta->update($request->all());

        return response()->json($consulta);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $consulta = Consulta::findOrFail($id);
        $consulta->delete();

        return response()->json(null, 204);
    }
}
