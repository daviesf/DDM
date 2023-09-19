import 'package:flutter/material.dart';
import 'aluno_repository.dart';
import 'aluno.dart';

class AlteraAluno extends StatefulWidget {
  Aluno aluno;
  int indice;

  AlteraAluno(this.aluno, this.indice, {Key? key}) : super(key: key);

  @override
  State<AlteraAluno> createState() => _AlteraAlunoState();
}

class _AlteraAlunoState extends State<AlteraAluno> {
  int ra = 0;
  String nome = "";
  List listaAlunos = AlunoRepository.getListaAlunos;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController campoRa = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  AlunoRepository listaAl = AlunoRepository();

  @override
  Widget build(BuildContext context) {
    inicializa();
    return Scaffold(
      appBar: AppBar(
        title: Text("Alterar dados de Aluno"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: campoRa,
              decoration: InputDecoration(
                labelText: 'RA',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: campoNome,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                      int ra = int.parse(campoRa.text);
                      String nome = campoNome.text;
                      Aluno a = Aluno(ra, nome);
                      listaAlunos[widget.indice] = a;
                      mostraMsgSucesso();
                    },
                  child: Text("Alterar"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/lista');
                  },
                  child: Text("Voltar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void inicializa() {
    campoRa.text = widget.aluno.ra.toString();
    campoNome.text = widget.aluno.nome;
  }

  void mostraMsgSucesso() {
    final snackBar = SnackBar(
      content: Text('Dados do aluno alterados com sucesso!'),
      duration: Duration(seconds: 2), // Defina a duração da mensagem
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
