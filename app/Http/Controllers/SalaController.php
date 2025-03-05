<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Sala;

class SalaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $per_page = $request->query("per_page");
        $salas = Sala::paginate($per_page);
        return response()->json($salas);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'descricao' => 'required|string',
            'estado' => 'nullable'
        ]);

        $sala = Sala::create($validatedData);
        return response()->json($sala, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $sala = Sala::findOrFail($id);
        return response()->json($sala);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validatedData = $request->validate([
            'descricao' => 'required'
        ]);

        $sala = Sala::findOrFail($id);
        $sala->update($validatedData);
        return response()->json($sala);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $sala = Sala::findOrFail($id);
        $sala->delete();
        return response()->json(null, 204);
    }
}
