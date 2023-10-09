import 'prato.dart';

class PratoRepository {
  //atributo
  static List<Prato> _listaPratos = [];

  static get getListaPratos => _listaPratos;
  set listaPratos(value) => _listaPratos = value;

  void adicionar(Prato pr) {
    _listaPratos.add(pr);
  }

  static void remover(Prato pr) {
    _listaPratos.remove(pr);
  }
}
