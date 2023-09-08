class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(this._nome, this._altura, this._peso);

  void setNome(String nome) {
    _nome = nome;
  }

  getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  getAltura() {
    return _altura;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Altura": _altura,
      "Peso": _peso,
    }.toString();
  }

  double calcularIMC() {
    return _peso / (_altura * _altura);
  }
}
