// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text("Home"),
      actions: [
        IconButton(onPressed: () {
          Navigator.pushNamed(context, '/person');
        },
        icon: Icon(Icons.person)),
        IconButton(onPressed: () {
          Navigator.pushNamed(context, '/basket');
        },
        icon: Icon(Icons.shopping_basket)),
        IconButton(onPressed: () {
          Navigator.pushNamed(context, '/favorite');
        },
        icon: Icon(Icons.favorite)),
      ],
      ),
    );
  }
}