// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'aluno.dart';

class MyLista extends StatefulWidget {
  const MyLista({super.key});

  @override
  State<MyLista> createState() => _MyListaState();
}

class _MyListaState extends State<MyLista> {

  List<Aluno> lista = [];

  @override
  Widget build(BuildContext context) {
    lista = [];
    lista.add(Aluno(123, "Tania"));
    lista.add(Aluno(456, "João"));
    lista.add(Aluno(222, "José"));
    lista.add(Aluno(333, "Maria"));

    return Scaffold(
      appBar: AppBar(title: const Text("Exemplo ListView")),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => Divider(thickness: 4), 
        itemCount: lista.length,
        itemBuilder: (BuildContext context, int index) { 
          return ListTile(
            title: Text(lista[index].nome),
            subtitle: Text(lista[index].ra.toString()),
            leading: (Icon(Icons.abc)),
            trailing: Text("T"),
          );
         }, 

        ),
    );
  }
}
