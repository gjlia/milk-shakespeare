<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Lista de Pedidos</title>
    </head>
    <body>
        <div class="container">
            <h1>Lista de Pedidos</h1>

            <a class="btn btn-outline-success my-2" href="{{ route('pedidos.create') }}">Novo Pedido</a>

            <table class="table table-hover table-bordered table-primary">
                <tr class="table-dark">
                    <th>Funcionário</th>
                    <th>Data</th>
                    <th>Descrição</th>
                    <th>Preço</th>
                    <th></th>
                </tr>

                @foreach ($pedidos as $pedido)
                    <tr>
                        <td>{{ $pedido->nome_funcionario }}</td>
                        <td>{{ $pedido->data_pedido }}</td>
                        <td>{{ $pedido->descricao_pedidos }}</td>
                        <td>{{ $pedido->preco_final }}</td>
                        <td></td>
                    </tr>
                @endforeach
            </table>
        </div>


    </body>
</html>
