class Prato {
  String _nome = "";
  int _preco = 0;
  int _cod = 0;
  String _categoria = "";

 String get nome => this._nome;

 set nome(String value) => this._nome = value;

  get preco => this._preco;

 set preco( value) => this._preco = value;

  get cod => this._cod;

 set cod( value) => this._cod = value;

  get categoria => this._categoria;

 set categoria( value) => this._categoria = value;

  // Construtor
  Prato(this._nome, this._preco, this._cod, this._categoria);  
}
