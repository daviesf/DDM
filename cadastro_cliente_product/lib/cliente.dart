// ignore_for_file: unnecessary_this

class Cliente {
  String _nome = "";
  String _cpf = "";
 

Cliente(this._nome, this._cpf);

  String get nome => this._nome;

  set nome(String value) => this._nome = value;

  get cpf => this._cpf;

  set cpf( value) => this._cpf = value;

 }