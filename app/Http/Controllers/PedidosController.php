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

    public function store(Request $requisicao)
    {
        $pedido = new Pedido();

        $pedido->nome_funcionario = $requisicao->nome_funcionario;
        $pedido->data_pedido = $requisicao->data_pedido;
        $pedido->descricao_pedidos = $requisicao->descricao_pedidos;
        $pedido->preco_final = $requisicao->preco_final;

        $pedido->save();

        return redirect()->route('pedidos.show', $pedido->id);
    }

    /**
     * Mostra um gato específico
     */
    public function show(Pedido $pedido)
    {
        return view('pedidos.view', compact('pedido'));
    }

    /**
     * Mostra o formulário para editar um gato específico
     */
    public function edit(Pedido $pedido)
    {
        return view('pedidos.edit', compact('pedido'));
    }

    /**
     * Atualiza um gato específico
     */
    public function update(Request $requisicao, Pedido $pedido)
    {
        $pedido->update($requisicao->all());
        return redirect()->route('pedidos.show', $pedido->id);
    }

    /**
     * Remove um gato específico
     */
    public function destroy($id)
    {

    }
}
