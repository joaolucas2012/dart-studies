// **** Programação Orientada a Objetos **** //

// **** Classe **** //
class Carro {
  // Atributos
  final String modelo;
  int _valorCarro; // _algumNome quer dizer variável privada

  // Método construtor
  Carro(this.modelo, this._valorCarro);

  // **** Getters e setters **** //
  int get valorCarro => _valorCarro;
  void set valorCarro(int valor) => _valorCarro = valor;
}

void main() {
  // **** Objetos **** //
  Carro mercedes = Carro("Mercedes", 30000);
  Carro gol = Carro("Gol", 10000);

  print(
      "${mercedes.modelo}: ${mercedes._valorCarro}, ${gol.modelo}: ${gol._valorCarro}");
}
