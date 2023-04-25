// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'my_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: Center(
                child: Column(
          children: [
            SizedBox(height: 50,),
            MyWidget("Casa amarela", Colors.yellow, 30),
            SizedBox(height: 50,),
            MyWidget("Casa azul", Colors.lightBlue, 50),
            SizedBox(height: 50,),
            Image.network(
                "https://cdn.pixabay.com/photo/2023/04/14/12/38/bird-7924990__340.jpg",
                width: 100, height: 100,),
            SizedBox(width: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("Eu", style: TextStyle(fontSize: 30)),
                SizedBox(width: 20),
                Text("amo", style: TextStyle(fontSize: 30)),
                SizedBox(width: 20),
                Text("la Casa Amarela", style: TextStyle(fontSize: 30)),
              ],
            )
          ],
        ))));
  }
}
