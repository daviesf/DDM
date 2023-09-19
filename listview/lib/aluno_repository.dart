import 'aluno.dart';

class AlunoRepository {
  //atributo
  static List<Aluno> _listaAlunos = [];

  static get getListaAlunos => _listaAlunos;
  set listaAlunos(value) => _listaAlunos = value;

  void adicionar(Aluno al) {
    _listaAlunos.add(al);
  }

  static void remover(Aluno al) {
    _listaAlunos.remove(al);
  }
}
