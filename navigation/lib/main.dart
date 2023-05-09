import 'package:flutter/material.dart';
import 'package:navigation/home.dart';
import 'person.dart';
import 'favorite.dart';
import 'basket.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHome(),
      routes: {
         '/': (context) => MyHome(),
         '/person': (context) => Person(),
         '/basket': (context) => Basket(),
         '/favorite': (context) => Favorite(),
      },
    );
  }
}