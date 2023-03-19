<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    use HasFactory;

    // Indica o nome da tabela do banco de dados
    protected $table = "milkshakespeare";

    // Indica os campos que podem ser preenchidos pelo usuário
    protected $fillable = [
        'nome_funcionario',
        'data_pedido',
        'produtos',
        'descricao_pedidos',
        'preco_final'
    ];
}
