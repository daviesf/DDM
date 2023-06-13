class Produto {
  String _nome = "";
  double _preco = 0;
  int _cod = 0;

  Produto(this._nome, this._preco, this._cod);

  get nome => this._nome;

 set nome( value) => this._nome = value;

  get preco => this._preco;

 set preco( value) => this._preco = value;

  get cod => this._cod;

 set cod( value) => this._cod = value;


}