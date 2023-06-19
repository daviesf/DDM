// ignore_for_file: unnecessary_this

class Produto {
  int _cod = 0;
  String _nome = "";
  double _preco = 0;

  Produto(this._cod, this._nome, this._preco);

 int get cod => this._cod;

 set cod(int value) => this._cod = value;

  get nome => this._nome;

 set nome( value) => this._nome = value;

  get preco => this._preco;

 set preco( value) => this._preco = value;

}