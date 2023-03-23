<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Pedido #{{ $pedido->id }}</title>
    </head>
    <body>
        <div class="container">

            @if($pedido->nome_funcionario == 'RM')
            <h2>Rodrigo Macário</h2><h3>{{ $pedido->data_pedido }}</h3>
            @elseif($pedido->nome_funcionario == 'BR')
            <h3>Beatriz Rosalina</h2><h3>{{ $pedido->data_pedido }}</h3>
            @elseif($pedido->nome_contratacao == 'RV')
            <h3>Ricardo Valente</h2><h3>{{ $pedido->data_pedido }}</h3>
            @endif

            <p>{{ $pedido->descricao_pedidos }} - R$ {{ $pedido->preco_final }}</p>

            <a class="btn btn-outline-success my-2" href="{{ route('pedidos.index') }}">Voltar à Lista</a>
        </div>
    </body>
</html>
