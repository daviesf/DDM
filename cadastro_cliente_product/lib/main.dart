import 'cadastro_cliente.dart';
import 'cadastro_produto.dart';
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
        '/cliente': (context) => const CadastroCliente(),
        '/produto': (context) => const CadastroProduto(),
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
        title: Text('Cadastro'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cliente');
            },
            icon: const Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/produto');
            },
            icon: const Icon(Icons.production_quantity_limits_sharp),
          ),
        ],
      ),
      body: Center(
        child: Text('Página inicial'),
      ),
    );
  }
}
