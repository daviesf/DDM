import 'package:flutter/material.dart';
import 'prato.dart';
import 'prato_repository.dart';

class MyPrato extends StatefulWidget {
  const MyPrato({Key? key}) : super(key: key);

  @override
  State<MyPrato> createState() => _MyPratoState();
}

class _MyPratoState extends State<MyPrato> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int cod = 0;
  int preco = 0;
  String nome = "";
  String categoria = "";
  TextEditingController campoCod = TextEditingController();
  TextEditingController campoPreco = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  TextEditingController campoCategoria = TextEditingController();
  PratoRepository listaPr = PratoRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Pratos"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/lista');
            },
            icon: Icon(Icons.list_alt_rounded),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: campoCod,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Código',
                    hintText: 'Digite o código do prato',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, preencha o código do prato.';
                    } else if (value.length < 3) {
                      return 'O código do prato deve ter pelo menos 3 caracteres.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: campoNome,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    hintText: 'Digite o nome do prato',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, preencha o nome do prato.';
                    } else if (value.length < 3) {
                      return 'O nome do prato deve ter pelo menos 3 caracteres.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: campoCategoria,
                  decoration: InputDecoration(
                    labelText: 'Categoria',
                    hintText: 'Digite a categoria do prato',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, preencha a categoria do prato.';
                    } else if (value.length < 3) {
                      return 'A categoria do prato deve ter pelo menos 3 caracteres.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: campoPreco,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Preço',
                    hintText: 'Digite o preço do prato',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, preencha o preço do prato.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      cod = int.parse(campoCod.text);
                      preco = int.parse(campoPreco.text);
                      nome = campoNome.text;
                      categoria = campoCategoria.text;
                      Prato pr = Prato(nome, preco, cod, categoria);
                      listaPr.adicionar(pr);
                      limparCampos();
                      setState(() {});
                    }
                  },
                  child: Text("Cadastrar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void limparCampos() {
    campoCod.clear();
    campoNome.clear();
    campoCategoria.clear();
    campoPreco.clear();
  }
}
