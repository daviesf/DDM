import 'package:flutter/material.dart';
import 'package:modularizacao/aluno_repository.dart';

import 'aluno.dart';

class MyCadastro extends StatefulWidget {
  const MyCadastro({super.key});

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
      body: Center(child: Column(children: [
        TextField(
          controller: campoRa),
        TextField(
          controller: campoNome),
          ElevatedButton(onPressed: () {
            ra = int.parse(campoRa.text);
            nome = campoNome.text;
            Aluno al = Aluno(ra, nome);
            listaAl.adicionar(al);
            listaAl.imprimir();
            setState(() {
              
            });
          }, child: Text("Cadastrar")),
      ],)),
    );
  }
}