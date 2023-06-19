import 'produto.dart';

class ProdutoRepository {
  List<Produto> _listaProdutos = [];

  ProdutoRepository()
  {
    this._listaProdutos = [];
  }

  void adicionar (Produto cl) 
  {
    _listaProdutos.add(cl);
  }

  void imprimir ()
  {
    for (var i=0; i<_listaProdutos.length; i++) {
      print("Código: ${_listaProdutos[i].cod}, Nome: ${_listaProdutos[i].nome}, Preço: ${_listaProdutos[i].preco}");
    }
  }
}