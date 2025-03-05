<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cama;

class CamaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $per_page = $request->query("per_page");
        $camas = Cama::with(['sala:sala_id,descricao'])
            ->paginate($per_page);
        return response()->json($camas);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'descricao' => 'required|string',
            'sala_id' => 'required|string',
            'estado' => 'nullable'
        ]);

        $cama = Cama::create($validatedData);
        return response()->json($cama, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $cama = Cama::findOrFail($id);
        return response()->json($cama);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validatedData = $request->validate([
            'descricao' => 'required',
            'sala_id' => 'integer|string',
        ]);

        $cama = Cama::findOrFail($id);
        $cama->update($validatedData);
        return response()->json($cama);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $cama = Cama::findOrFail($id);
        $cama->delete();
        return response()->json(null, 204);
    }
}
