<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pedido;

class PedidosController extends Controller
{
    
    public function index()
    {
        $pedidos = Pedido::all();
        return view('pedidos.index', compact('pedidos'));
    }

    public function create()
    {
        return view('pedidos.create');
    }

    /**
     * Armazena um novo gato
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Mostra um gato específico
     */
    public function show($id)
    {
        //
    }

    /**
     * Mostra o formulário para editar um gato específico
     */
    public function edit($id)
    {
        //
    }

    /**
     * Atualiza um gato específico
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove um gato específico
     */
    public function destroy($id)
    {

    }
}
