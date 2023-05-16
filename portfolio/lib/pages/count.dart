import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int _contador = 0;

  void incrementa() {
    _contador++;
  }

  void decrementa() {
    _contador--;
  }

  int getContador() {
    return _contador;
  }



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
                          decrementa();
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
                        child: Center(child: Text(getContador().toString())),
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
                          incrementa();
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
          Text("Valor do contador: " + getContador().toString())
        ],
      ),
    );
  }
}
