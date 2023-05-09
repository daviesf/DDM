import 'package:flutter/material.dart';

class Basket extends StatelessWidget {
  const Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basket!")),
      body: Center(child: Column(children: [
        Text("Basket"),
        ElevatedButton(onPressed: (() {
          Navigator.pushNamed(context, '/');
          // Navigator.pop(context);        
        }), child: Text("Voltar"))
      ],)),
    );
  }
}