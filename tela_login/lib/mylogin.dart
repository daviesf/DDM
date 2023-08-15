import 'package:flutter/material.dart';
import 'repository.dart';
import 'home.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  String username = "";
  String password = "";
  TextEditingController campoUser = TextEditingController();
  TextEditingController campoPassword = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  UsuarioRepository usuarioRepository = UsuarioRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: campoUser,
                      decoration: InputDecoration(
                        labelText: "Usuário",
                        hintText: "Insira o Usuário",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "O usuário não pode ser vazio";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: campoPassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        hintText: "Insira a senha",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "A senha não pode ser vazia";
                        } else if (campoPassword.text.length < 3) {
                          return "A senha precisa ter mais que 3 caracteres";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    password = campoPassword.text;
                    username = campoUser.text;

                    autenticarUsuario();
                  }
                },
                child: Text("Entrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void autenticarUsuario() {
    bool autenticado = usuarioRepository.verificarCredenciais(username, password);
    if (autenticado) {
      mostraMsgSucesso();
    } else {
      mostraMsgErro();
    }
  }

  void mostraMsgSucesso() {
  FocusScope.of(context).unfocus();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('Login efetuado com sucesso')),
  );

  Future.delayed(Duration(seconds: 1), () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(username: username),
      ),
    );
  });
}


  void mostraMsgErro() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Erro de autenticação'),
        content: Text('Usuário ou senha incorretos.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}