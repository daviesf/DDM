import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListaDeTarefas(),
    debugShowCheckedModeBanner: false,
  ));
}

class ListaDeTarefas extends StatefulWidget {
  @override
  _ListaDeTarefasState createState() => _ListaDeTarefasState();
}

class _ListaDeTarefasState extends State<ListaDeTarefas> {
  List<String> tarefas = [];
  TextEditingController tarefaController = TextEditingController();
  String errorText = "";

  void adicionarTarefa() {
    String novaTarefa = tarefaController.text;
    if (novaTarefa.isNotEmpty) {
      setState(() {
        tarefas.add(novaTarefa);
      });
      tarefaController.clear();
      errorText = "";
    } else {
      setState(() {
        errorText = "O campo não pode ser vazio";
      });
    }
  }

  void limparLista() {
    setState(() {
      tarefas.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
        backgroundColor: Color.fromARGB(255, 175, 68, 104),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: tarefaController,
              decoration: InputDecoration(
                labelText: 'Digite uma tarefa',
                errorText: errorText,
                // backgroundColor: Color.fromARGB(255, 90, 28, 49),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: adicionarTarefa,
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 175, 68, 104)),
            child: Text("Adicionar"),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: tarefas.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tarefas[index]),
                  leading: Icon(Icons.description),
                  trailing: Icon(Icons.check_box_outline_blank),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: limparLista,
            style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 175, 68, 104)),
            child: Text("Limpar Lista"),
          ),
        ],
      ),
    );
  }
}
