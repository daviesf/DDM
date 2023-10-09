import 'package:flutter/material.dart';
import 'prato_repository.dart';
import 'prato.dart';

class AlteraPrato extends StatefulWidget {
  final Prato prato;
  final int indice;

  AlteraPrato(this.prato, this.indice, {Key? key}) : super(key: key);

  @override
  _AlteraPratoState createState() => _AlteraPratoState();
}

class _AlteraPratoState extends State<AlteraPrato> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController campoCod = TextEditingController();
  TextEditingController campoPreco = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  TextEditingController campoCategoria = TextEditingController();

  @override
  void initState() {
    super.initState();
    inicializa();
  }

  void inicializa() {
    campoCod.text = widget.prato.cod.toString();
    campoPreco.text = widget.prato.preco.toString();
    campoNome.text = widget.prato.nome;
    campoCategoria.text = widget.prato.categoria;
  }

  void mostraMsgSucesso() {
    final snackBar = SnackBar(
      content: Text('Dados do Prato alterados com sucesso!'),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alterar dados de Prato"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: campoCod,
                decoration: InputDecoration(
                  labelText: 'Código',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, preencha o código do prato.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: campoNome,
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, preencha o nome do prato.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: campoCategoria,
                decoration: InputDecoration(
                  labelText: 'Categoria',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, preencha a categoria do prato.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: campoPreco,
                decoration: InputDecoration(
                  labelText: 'Preço',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, preencha o preço do prato.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        int cod = int.parse(campoCod.text);
                        int preco = int.parse(campoPreco.text);
                        String nome = campoNome.text;
                        String categoria = campoCategoria.text;
                        Prato prato = Prato(nome, preco, cod, categoria);
                        PratoRepository.getListaPratos[widget.indice] = prato;
                        mostraMsgSucesso();
                      }
                    },
                    child: Text("Alterar"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/lista');
                    },
                    child: Text("Voltar"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
