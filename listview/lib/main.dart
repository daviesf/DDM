import 'package:flutter/material.dart';
import 'package:listview/cadastro.dart';
import 'lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: MyLista()
      routes: {
      '/':(context) => MyCadastro(),
      '/lista':(context) => MyLista()
      },
    );
  }
}
