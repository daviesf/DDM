import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
          children: [
            Text("Contador:"),
            Row(
              children: [
                Column(
                children: [
                  ElevatedButton(onPressed: () {
                  decrementa();
                  setState(() {

                  });
                }, 
                    
                child: Text("-")),
                ],
              ),
              Column(
                children: [
                  Text("a"),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: () {
                incrementa();
                setState(() {

                });
              }, 
              child: Text("+"))
                ],
              )
              ],
            )
          ],
        ),
    );
  }

  void decrementa() {
    
  }

  void incrementa() {

  }
}
