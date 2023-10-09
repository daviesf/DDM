import 'lista.dart';
import 'package:flutter/material.dart';
import 'cadastro.dart';

MaterialColor customPrimaryColor = MaterialColor(
  0xFF81D3F6, // Cor primária (correspondente a RGB: 129, 211, 246)
  <int, Color>{
    50: Color(0xFFE6F6FC),
    100: Color(0xFFB0E5F3),
    200: Color(0xFF81D3F6),
    300: Color(0xFF51C1F8),
    400: Color(0xFF37B5F6),
    500: Color(0xFF1CAAF5), // Cor primária
    600: Color(0xFF1CAAF5),
    700: Color(0xFF159FF3),
    800: Color(0xFF1195F1),
    900: Color(0xFF0C87ED),
  },
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Restaurant App',
      theme: ThemeData(
        primarySwatch: customPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
      routes: {
        '/myPrato': (context) => const MyPrato(),
        '/lista': (context) => const MyLista(),
      },
      debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // URL da imagem
  final String imageUrl =
      'https://gifs.eco.br/wp-content/uploads/2023/06/imagens-de-restaurante-png-2.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurante'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              imageUrl, // Use a URL da imagem aqui
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Bem-vindo ao Augusta´s',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/myPrato');
              },
              icon: Icon(Icons.add),
              label: Text('Fazer Cadastro de Prato'),
            ),
          ],
        ),
      ),
    );
  }
}
