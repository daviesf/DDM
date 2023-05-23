class Class {
  int _contador = 0;

  void incrementa() {
    _contador++;
  }

  void decrementa() {
    if (_contador > 0) {
      _contador--;
    }
  }

  int getContador() {
    return _contador;
  }
}
