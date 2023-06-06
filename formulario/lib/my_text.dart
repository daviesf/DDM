import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  const MyText({super.key});

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  String valor1 = '';
  String valor2 = '';
  String resultado = '';
  TextEditingController campoTexto = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      TextField(
        controller: campoTexto,
        onChanged: (value) {
          print(value);
        },
        style: TextStyle(
          color: Colors.blue,
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
        )
      ),
      ElevatedButton(
          onPressed: () {
            textoDigitado = campoTexto.text;
            setState(() {});
          },
          child: const Text("ok")),
      ElevatedButton(onPressed: () {
        textoDigitado="";
        campoTexto.clear();
        setState(() {
          
        });
      }, child: const Text("Limpar")),
      Text("O resultado é $result"),
    ])));
  }
}
