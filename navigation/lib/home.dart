// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:navigation/basket.dart';
import 'package:navigation/favorite.dart';
import 'package:navigation/person.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //atributo
  int _indice = 0;

  List<Widget> _telas = [
    Person(),
    Basket(),
    Favorite(),
  ];

  //método
  void _itemClicado(int index) {
    setState(() {
     _indice = index; 
    });
    // switch (index) {
    //   case 0:
    //     Navigator.pushNamed(context, '/person');
    //     break;
    //   case 1:
    //     Navigator.pushNamed(context, '/basket');
    //     break;
    //   case 2:
    //     Navigator.pushNamed(context, '/favorite');
    //     break;  

    // }
  }
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
      // ignore: prefer_const_literals_to_create_immutables
      body: _telas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
        onTap: _itemClicado,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Person",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: "Basket",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorite",
        ),
      ],),
    );
  }
}