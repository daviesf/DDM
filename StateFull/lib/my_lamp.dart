import 'package:flutter/material.dart';

class MyLamp extends StatefulWidget {
  const MyLamp({super.key});

  @override
  State<MyLamp> createState() => _MyLampState();
}

class _MyLampState extends State<MyLamp> {
  String linkImage = "https://i.stack.imgur.com/b983w.jpg";
  String mensagem = "Desligado";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Image.network(linkImage),
          Text(mensagem),
          ElevatedButton(
              onPressed: () {
                mudaEstado();
                setState(() {});
              },
              child: Text("Mudar Estado"))
        ],
      )),
    );
  }

  void mudaEstado() {
    if (mensagem == "Desligado") {
      mensagem = "Ligado";
      linkImage = 'https://i.stack.imgur.com/ybxlO.jpg';
    } else {
      mensagem = "Desligado";
      linkImage = 'https://i.stack.imgur.com/b983w.jpg';
    }
  }
}
