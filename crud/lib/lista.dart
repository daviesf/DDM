import 'package:flutter/material.dart';
import 'altera.dart';
import 'prato.dart';
import 'prato_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Pratos Cadastrados',
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
  TextEditingController _searchController = TextEditingController();
  List<Prato> listaPratos = PratoRepository.getListaPratos;
  List<Prato> listaBusca = [];
  String nomeBusca = "";

  @override
  void initState() {
    listaBusca = List.from(listaPratos);
    super.initState();
  }

  void atualizaLista(String nome) {
    listaBusca = List.from(listaPratos);
    setState(() {
      listaBusca = listaPratos
          .where((element) =>
              (element.nome.toLowerCase().contains(nome.toLowerCase())))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final listaPratos = PratoRepository.getListaPratos;
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Pratos Cadastrados")),
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
                  controller: _searchController, // Adicione o controller
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (String nome) {
                    nomeBusca = nome;
                    atualizaLista(nomeBusca);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Divider(thickness: 2),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) =>
                  Divider(thickness: 2),
              itemCount: listaBusca.length, // Usar listaBusca em vez de _filteredPratos
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(listaBusca[index].nome), // Usar listaBusca
                  subtitle:
                      Text('Categoria: ${listaBusca[index].categoria}, Preço: ${listaBusca[index].preco}'),
                  leading: CircleAvatar(child: Text(listaBusca[index].nome[0])), // Usar listaBusca
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
                                    return AlteraPrato(
                                        listaPratos[index], index);
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
                              Prato pr = listaBusca[index]; // Usar listaBusca
                              PratoRepository.remover(pr);
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
          Divider(thickness: 2),
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
