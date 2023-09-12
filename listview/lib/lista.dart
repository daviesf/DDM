// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'aluno_repository.dart';

import 'aluno.dart';

class MyLista extends StatefulWidget {
  const MyLista({super.key});

  @override
  State<MyLista> createState() => _MyListaState();
}

class _MyListaState extends State<MyLista> {

  @override
  Widget build(BuildContext context) {
    final listaAlunos = AlunoRepository.getListaAlunos;
    return Scaffold(
      appBar: AppBar(title: const Text("Exemplo ListView")),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => Divider(thickness: 4), 
        itemCount: listaAlunos.length,
        itemBuilder: (BuildContext context, int index) { 
          return ListTile(
            title: Text(listaAlunos[index].nome),
            subtitle: Text(listaAlunos[index].ra.toString()),
            leading: (Icon(Icons.abc)),
            trailing: Text("T"),
          );
         }, 

        ),
    );
  }
}
