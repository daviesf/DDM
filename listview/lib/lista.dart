import 'package:flutter/material.dart';
import 'altera.dart';
import 'aluno.dart';
import 'aluno_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyLista(),
      routes: {
        '/': (context) => const MyLista(),
      },
    );
  }
}

class MyLista extends StatefulWidget {
  const MyLista({Key? key}) : super(key: key);

  @override
  _MyListaState createState() => _MyListaState();
}

class _MyListaState extends State<MyLista> {
  //obtem lista de AluoRepository (get)
  List<Aluno> listaAlunos = AlunoRepository.getListaAlunos;

  //faz uma cópia da lista original de alunos que vem de Repository
  List<Aluno> listaBusca = [];

  //quando deleta aluno da lista original, precisa manter o nome digitado no campo de busca
  String nomeBusca = "";

  @override
  void initState() {
    //cópia da lista original
    listaBusca = List.from(listaAlunos);
    super.initState();
  }

  void atualizaLista(String nome) {
    listaBusca = List.from(listaAlunos);
    setState(() {
      //seleciona somente os alunos com nome igual ao da busca e grava na cópia
      listaBusca = listaAlunos
          .where((element) =>
              (element.nome.toLowerCase().contains(nome.toLowerCase())))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final listaAlunos = AlunoRepository.getListaAlunos;

    return Scaffold(
      appBar: AppBar(title: const Text("Exemplo ListView")),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                height: 30,
                child: TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (String nome) {
                    // guarda string do campo de busca caso seja necessário usar na exclusão
                    nomeBusca = nome;
                    atualizaLista(nomeBusca);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Divider(
            thickness: 2,
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) =>
                  Divider(thickness: 2),
              itemCount: listaBusca.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(listaAlunos[index].nome),
                  subtitle: Text(listaAlunos[index].ra.toString()),
                  leading:
                      CircleAvatar(child: Text(listaAlunos[index].nome[0])),
                  trailing: SizedBox(
                    width: 70,
                    child: Row(
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return AlteraAluno(
                                        listaAlunos[index], index);
                                  },
                                ),
                              );
                            },
                            icon: Icon(Icons.edit),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              Aluno al = listaAlunos[index];
                              AlunoRepository.remover(al);
                              //após remover o aluno da lista original, chama método para atualizar a cópia
                              atualizaLista(nomeBusca);
                              setState(() {});
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              padding: EdgeInsets.all(7),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text("Voltar"),
          ),
        ],
      ),
    );
  }
}
