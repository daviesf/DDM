// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:portfolio/pages/about.dart';
import 'package:portfolio/pages/count.dart';
import 'package:portfolio/pages/welcome.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //atributo
  int _indice = 0;

  List<Widget> _telas = [
    Welcome(),
    Count(),
    About(),
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
          Navigator.pushNamed(context, '/welcome');
        },
        icon: Icon(Icons.assessment_outlined)),
        IconButton(onPressed: () {
          Navigator.pushNamed(context, '/count');
        },
        icon: Icon(Icons.add_circle)),
        IconButton(onPressed: () {
          Navigator.pushNamed(context, '/about');
        },
        icon: Icon(Icons.info)),
      ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: _telas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indice,
        onTap: _itemClicado,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.assessment_outlined),
          label: "Welcome",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          label: "Count",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: "About",
        ),
      ],),
    );
  }
}