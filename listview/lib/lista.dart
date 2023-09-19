// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'altera.dart';
import 'aluno.dart';
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
            trailing: SizedBox (
              width: 70,
              child: Row (children: [
                Expanded(child: IconButton(onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return AlteraAluno(listaAlunos[index], index);
                  },));
                }, icon: Icon(Icons.edit))),
                Expanded(child: IconButton(onPressed: () {
                  Aluno al = listaAlunos[index];
                  AlunoRepository.remover(al);
                  setState(() {
                    
                  });
                }, icon: Icon(Icons.delete))),
              ],)),
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
