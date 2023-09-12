import 'package:flutter/material.dart';
import 'aluno_repository.dart';
import 'aluno.dart';

class MyCadastro extends StatefulWidget {
  const MyCadastro({Key? key}) : super(key: key);

  @override
  State<MyCadastro> createState() => _MyCadastroState();
}

class _MyCadastroState extends State<MyCadastro> {
  int ra = 0;
  String nome = "";
  TextEditingController campoRa = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  AlunoRepository listaAl = AlunoRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Alunos"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/lista');
            },
            icon: Icon(Icons.list_alt_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: campoRa,
              decoration: InputDecoration(
                labelText: 'RA',
                hintText: 'Digite o RA do aluno',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: campoNome,
              decoration: InputDecoration(
                labelText: 'Nome',
                hintText: 'Digite o nome do aluno',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ra = int.parse(campoRa.text);
                nome = campoNome.text;
                Aluno al = Aluno(ra, nome);
                listaAl.adicionar(al);
                limparCampos();
                setState(() {});
              },
              child: Text("Cadastrar"),
            ),
          ],
        ),
      ),
    );
  }

  void limparCampos() {
    campoRa.clear();
    campoNome.clear();
  }
}
