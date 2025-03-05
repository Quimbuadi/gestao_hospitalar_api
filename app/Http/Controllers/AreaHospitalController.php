<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AreaHospital;

class AreaHospitalController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $per_page = $request->query("per_page");
        $areas = AreaHospital::paginate($per_page);
        return response()->json($areas);
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

        $area = AreaHospital::create($validatedData);
        return response()->json($area, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $area = AreaHospital::findOrFail($id);
        return response()->json($area);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validatedData = $request->validate([
            'descricao' => 'required'
        ]);

        $area = AreaHospital::findOrFail($id);
        $area->update($validatedData);
        return response()->json($area);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $area = AreaHospital::findOrFail($id);
        $area->delete();
        return response()->json(null, 204);
    }
}
