import 'package:flutter/material.dart';
import 'pages/about.dart';
import 'pages/count.dart';
import 'pages/home.dart';
import 'pages/welcome.dart';

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
      routes: {
         '/': (context) => Home(),
         '/about': (context) => About(),
         '/count': (context) => Count(),
         '/welcome': (context) => Welcome(),
      },
    );
  }
}