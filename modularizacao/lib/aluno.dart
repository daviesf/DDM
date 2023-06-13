// ignore_for_file: unnecessary_this

class Aluno {
  //atributos
  int _ra = 0;
  String _nome = "";
 

  //construtor
  Aluno(this._ra,this._nome);

  int get ra => this._ra;

  set ra(int value) => this._ra = value;

  get nome => this._nome;

  set nome( value) => this._nome = value;
}