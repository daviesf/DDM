import 'package:flutter/material.dart';
import 'class.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  Class cont = Class();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Contador:"),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.deepPurple,
                      child: const Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          cont.decrementa();
                        });
                    })
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.deepPurpleAccent[100]),
                        child: Center(child: Text(cont.getContador().toString())),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.deepPurple,
                      child: const Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          cont.incrementa();
                        });
                    })
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Valor do contador: " + cont.getContador().toString())
        ],
      ),
    );
  }
}
