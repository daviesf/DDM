import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Tarefas'),
          backgroundColor: Colors.pinkAccent, // Cor alterada para fúcsia
        ),
        body: TodoList(),
      ),
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> tasks = [];
  TextEditingController taskController = TextEditingController();
  String errorText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: taskController,
                  decoration: InputDecoration(
                    labelText: 'Nova Tarefa',
                    errorText: errorText,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                addTask();
              },
              style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
              child: Text('Adicionar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: tasks.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(tasks[index]),
                leading: Icon(Icons.description, color: Colors.pinkAccent),
                trailing: Icon(Icons.check_box_outline_blank, color: Colors.pinkAccent),
              );
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            clearList();
          },
          style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
          child: Text('Limpar Lista', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  void addTask() {
    String task = taskController.text;
    if (task.isNotEmpty) {
      setState(() {
        tasks.add(task);
      });
      taskController.clear();
      errorText = "";
    } else {
      setState(() {
        errorText = "Insira uma descrição para a nova tarefa";
      });
    }
  }

  void clearList() {
    setState(() {
      tasks.clear();
    });
  }
}
