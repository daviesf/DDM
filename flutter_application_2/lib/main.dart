// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import './my_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 1',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exercício 1'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyWidget("Eu", Colors.red, 20, 9),
                SizedBox(height: 10,),
                MyWidget("Amo", Colors.indigo, 20, 9),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyWidget("a", Colors.amber, 20, 9),
                    SizedBox(width: 10,),
                    MyWidget("aula", Colors.green, 20, 9),
                    SizedBox(width: 10,),
                    MyWidget("da", Colors.blue, 20, 9)
                  ],
                ),
                SizedBox(height: 10,),
                MyWidget("Tânia!!", Colors.lightBlueAccent, 20, 9),
                SizedBox(height: 10,),
                SizedBox(width: 100,
                child: Image.network("https://cdn-icons-png.flaticon.com/512/1076/1076984.png"))
              ],
          )
        ),
      )
    );
  }
}