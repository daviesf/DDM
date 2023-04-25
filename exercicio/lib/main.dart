// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'topico.dart';

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
            bottomNavigationBar: BottomAppBar(
              color: Colors.red[800],
              child: SizedBox(height: 50, child: Align(
                child: Text ("Acompanhe conosco! 🐱",
                style: TextStyle(fontSize: 15, color: Colors.white,),
                textAlign: TextAlign.center,),
              )),
            ),
            appBar: AppBar(
              title: Text("Seja bem-vindo(a)!"),
              backgroundColor: Colors.red[800],
              centerTitle: true,
            ),
            body: Center(
              child: Column(children: [
                SizedBox(
                  child: Image.network(
                      "https://media.tenor.com/YjeDKHDpa6gAAAAd/cool-cat.gif"),
                ),
                SizedBox(height: 10),
                Text("Seja bem-vindo ao aplicativo \"Fofura Gatos Ltda.\"",
                    textAlign: TextAlign.center),
                SizedBox(height: 20),
                Text("Aqui você encontrará:",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12)),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        topico("Gatos fofos"),
                        topico("Dicas de gatos"),
                        topico("Manual do Gato"),
                        topico("Gatos dos Seguidores")
                      ],
                    )),
              ]),
            )));
  }
}
