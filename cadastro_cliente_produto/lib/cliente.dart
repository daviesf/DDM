// ignore_for_file: unused_field, unnecessary_this

class Cliente {
  String _nome = "";
  String _cpf = "";
  int _idade = 0;

  Cliente(this._nome,this._cpf,this._idade);

  get nome => this._nome;

 set nome( value) => this._nome = value;

  get cpf => this._cpf;

 set cpf( value) => this._cpf = value;

  get idade => this._idade;

 set idade( value) => this._idade = value;
}