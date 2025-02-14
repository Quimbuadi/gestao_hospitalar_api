<?php

namespace App\Http\Controllers;

use App\Models\Medico;
use Illuminate\Http\Request;

class MedicoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $itensPorPagina = $request->get("per_page") ?? 10;
        return Medico::paginate($itensPorPagina);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nome' => 'required|string|max:255',
            'especialidade' => 'required|string|max:255',
            'crm' => 'nullable|string',
            'telefone' => 'required|string|max:15',
            'email' => 'required|string|email|max:255',
        ]);

        $medico = new Medico([
            'nome' => $request->get('nome'),
            'especialidade' => $request->get('especialidade'),
            'crm' => $request->get('crm'),
            'telefone' => $request->get('telefone'),
            'email' => $request->get('email'),
        ]);

        $medico->save();

        return response()->json($medico, 201);
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
