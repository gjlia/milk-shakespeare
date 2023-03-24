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
            <h1>Edição de Pedido</h1>

            <form method="POST" action="{{ route('pedidos.update', $pedido->id) }}">
                @csrf
                @method('PUT')

                 <div class="mb-3">
                    <label>Nome Funcionário:</label>
                    <select name="nome_funcionario" class="form-control">
                        <option value="RM" {{ $pedido->nome_funcionario == 'RM' ? 'selected' : '' }}>Rodrigo Macário</option>
                        <option value="BR" {{ $pedido->nome_funcionario == 'BR' ? 'selected' : '' }}>Beatriz Rosalina</option>
                        <option value="RV" {{ $pedido->nome_funcionario == 'RV' ? 'selected' : '' }}>Ricardo Valente</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label>Data do Pedido:</label>
                    <input type="text" name="data_pedido" class="form-control" value="{{ $pedido->data_pedido }}">
                </div>

                <div class="mb-3">
                    <label>Descrição do Pedido:</label>
                    <textarea name="descricao_pedidos" id="" rows="5" class="form-control">{{ $pedido->descricao_pedidos }}</textarea>
                </div>

                <div class="mb-3">
                    <label>Preço do Pedido:</label>
                    <input type="text" name="preco_final" class="form-control" value="{{ $pedido->preco_final }}">
                </div>

                <div>
                    <input type="submit" value="Atualizar Pedido" class="btn btn-primary">
                </div>
            </form>
        </div>
    </body>
</html>
