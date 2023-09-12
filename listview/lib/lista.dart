// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'aluno_repository.dart';

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
      body: Column(children: [
        
      ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) => Divider(thickness: 2), 
        itemCount: listaAlunos.length,
        itemBuilder: (BuildContext context, int index) { 
          return ListTile(
            title: Text(listaAlunos[index].nome),
            subtitle: Text(listaAlunos[index].ra.toString()),
            leading: CircleAvatar (child: Text(listaAlunos[index].nome[0])),
          );
         }, 
        padding: EdgeInsets.all(7),
        ),
        Divider(thickness: 2,),
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context,'/');
        },
        child: Text("Voltar"),
        )
        ],)
    );
  }
}
