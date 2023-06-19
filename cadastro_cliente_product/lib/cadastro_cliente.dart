import 'package:flutter/material.dart';
import 'cliente_repository.dart';
import 'cliente.dart';

class CadastroCliente extends StatefulWidget {
  const CadastroCliente({super.key});

  @override
  State<CadastroCliente> createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
  String cpf = "";
  String nome = "";
  TextEditingController campoCPF = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  ClienteRepository listaCl = ClienteRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Cliente'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: campoCPF,
                decoration: InputDecoration(
                  labelText: 'CPF',
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
              ElevatedButton(
                onPressed: () {
                  cpf = campoCPF.text;
                  nome = campoNome.text;
                  Cliente cl = Cliente(cpf, nome);
                  listaCl.adicionar(cl);
                  listaCl.imprimir();
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