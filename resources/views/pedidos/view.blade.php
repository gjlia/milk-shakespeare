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
            <h1>{{ $pedido->data_pedido }} - Rodrigo Macário<h1>
            @elseif($pedido->nome_funcionario == 'BR')
            <h1>{{ $pedido->data_pedido }} - Beatriz Rosalina</h1>
            @elseif($pedido->nome_contratacao == 'RV')
            <h1>{{ $pedido->data_pedido }} - Ricardo Valente</h1>
            @endif

            <h2>{{ $pedido->descricao_pedidos }}</h3>

            <h3>Preço: {{ $pedido->valor_final }} reais.</h3>

            <a href="{{ route('pedidos.index') }}">Voltar à Lista</a>
        </div>
    </body>
</html>
