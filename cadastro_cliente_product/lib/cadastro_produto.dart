import 'package:flutter/material.dart';
import 'produto_repository.dart';

import 'produto.dart';

class CadastroProduto extends StatefulWidget {
  const CadastroProduto({super.key});

  @override
  State<CadastroProduto> createState() => _CadastroProdutoState();
}

class _CadastroProdutoState extends State<CadastroProduto> {
  int cod = 0;
  String nome = "";
  double preco = 0;
  TextEditingController campoCod = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  TextEditingController campoPreco = TextEditingController();
  ProdutoRepository listaPr = ProdutoRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Produto'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: campoCod,
                decoration: InputDecoration(
                  labelText: 'Código',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: campoNome,
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: campoPreco,
                decoration: InputDecoration(
                  labelText: 'Preço',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  cod = int.parse(campoCod.text);
                  nome = campoNome.text;
                  preco = double.parse(campoPreco.text);
                  Produto pr = Produto(cod, nome, preco);
                  listaPr.adicionar(pr);
                  listaPr.imprimir();
                  setState(() {});
                },
                child: Text("Cadastrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}