import 'cliente.dart';

class ClienteRepository {
  List<Cliente> _listaClientes = [];

  ClienteRepository()
  {
    this._listaClientes = [];
  }

  void adicionar (Cliente cl) 
  {
    _listaClientes.add(cl);
  }

  void imprimir ()
  {
    for (var i=0; i<_listaClientes.length; i++) {
      print("CPF: ${_listaClientes[i].cpf}, Nome: ${_listaClientes[i].nome}");
    }
  }
}