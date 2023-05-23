import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({Key? key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int _contador = 0;

  void incrementa() {
    setState(() {
      _contador++;
    });
  }

  void decrementa() {
    setState(() {
      if (_contador > 0) {
      _contador--;
    }
    });
  }

  int getContador() {
    return _contador;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contador:",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Icon(
              Icons.calculate,
              color: Colors.blue,
              size: 128,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      FloatingActionButton(
                        backgroundColor: Colors.blue,
                        child: const Icon(Icons.remove),
                        onPressed: () {
                          decrementa();
                        },
                      ),
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
                            shape: BoxShape.circle,
                            color: Colors.blue[100],
                          ),
                          child: Center(child: Text(getContador().toString())),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      FloatingActionButton(
                        backgroundColor: Colors.blue,
                        child: const Icon(Icons.add),
                        onPressed: () {
                          incrementa();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Valor do contador: " + getContador().toString(),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
