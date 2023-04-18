// ignore_for_file: prefer_const_constructors



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
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lucario"),
          backgroundColor: Colors.indigo[700],
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              DecoratedBox(decoration: BoxDecoration (color: Colors.red[800]),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Text("  Charmander  ", style: TextStyle(fontSize: 50)),
              )),
              SizedBox(height: 30),
              DecoratedBox(decoration: BoxDecoration (color: Colors.green),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Text("  Bulbassaur  ", style: TextStyle(fontSize: 50))  
              )),
              SizedBox(height: 30),
              DecoratedBox(decoration: BoxDecoration (color: Colors.lightBlue),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Text("  Squirtle  ", style: TextStyle(fontSize: 50))  
              )),
            ],
          ),
        )
      )
    );
  }
}

