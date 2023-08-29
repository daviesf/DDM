import 'package:flutter/material.dart';

class MyLista extends StatefulWidget {
  const MyLista({super.key});

  @override
  State<MyLista> createState() => _MyListaState();
}

class _MyListaState extends State<MyLista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exemplo ListView")),
      body: ListView(children: [
        ListTile(
          
          title: Text("Teste"),
          subtitle: Text("Testando..."),
          leading: Icon(Icons.person),
          trailing: Text('X'),
        ),
        ListTile(
          title: Text("Teste2"),
          subtitle: Text("Testando2..."),
          leading: Icon(Icons.access_alarm_rounded),
          trailing: Text('Y'),
        ),
        ListTile(
          title: Text("Teste3"),
          subtitle: Text("Testando3..."),
          leading: Icon(Icons.account_balance),
          trailing: Text('Z'),
        )
      ]),
    );
  }
}
