import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCadastro extends StatefulWidget {
  const MyCadastro({super.key});

  @override
  State<MyCadastro> createState() => _MyCadastroState();
}

class _MyCadastroState extends State<MyCadastro> {
  int ra = 0;
  String nome = "";
  TextEditingController campoRa = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: campoRa,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        labelText: "RA",
                        hintText: "Informe o RA",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "O RA não pode ser vazio";
                        } else {
                          if (int.parse(campoRa.text) < 10) {
                            return "O RA deve ser maior que 10";
                          }
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: campoNome,
                      decoration: InputDecoration(
                        labelText: "Nome",
                        hintText: "Informe o nome",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "O nome não pode ser vazio";
                        } else {
                          if (campoNome.text.length < 5) {
                            return "O nome precisa ter mais que 5 caracteres";
                          }
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ra = int.parse(campoRa.text);
                    nome = campoNome.text;
					mostraMsgSucesso();
                    setState(() {});
                  }
                },
                child: Text("Cadastrar"),
              ),
              SizedBox(height: 16),
              Text(
                "Valores digitados: $ra, $nome",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void mostraMsgSucesso() {
	ScaffoldMessenger.of(context).showSnackBar(
		SnackBar(content: Text('Aluno cadastrado com sucesso')));
  }
}
