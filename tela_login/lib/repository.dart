import 'usuario.dart';

class UsuarioRepository {
  final List<Usuario> usuarios = [
    Usuario('Samuka', 'S123456'),
    Usuario('Davie', 'D123456'),
    Usuario('Junior', 'J123456'),
  ];

  bool verificarCredenciais(String username, String password) {
    for (var usuario in usuarios) {
      if (usuario.username == username && usuario.password == password) {
        return true;
      }
    }
    return false;
  }
}
