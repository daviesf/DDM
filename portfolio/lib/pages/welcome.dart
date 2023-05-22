// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'topico.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: SizedBox(
            height: 50,
            child: Align(
              child: Text(
                "Acompanhe conosco! 🐱",
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Seja bem-vindo(a)!"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                "https://media.tenor.com/YjeDKHDpa6gAAAAd/cool-cat.gif",
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Seja bem-vindo ao aplicativo \"Fofura Gatos Ltda.\"",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Aqui você encontrará:",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    topico("Gatos fofos"),
                    topico("Dicas de gatos"),
                    topico("Manual do Gato"),
                    topico("Gatos dos Seguidores"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
