import 'package:ex_operacoes/operacoes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        '/operacoes': (context) => const Operacoes(),
      },
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Operações'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/operacoes');
            },
            icon: const Icon(Icons.calculate),
          ),
        ],
      ),
      body: Center(
        child: Text('Página inicial'),
      ),
    );
  }
}
