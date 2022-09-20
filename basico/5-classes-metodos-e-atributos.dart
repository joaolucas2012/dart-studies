// Classes, métodos e atributos
class Celular {
  // Atributos
  final String dono;
  final String cor;
  final int qtdProcessadores;
  final double peso;
  final double tamanho;

  // Método construtor
  Celular(this.dono, this.cor, this.qtdProcessadores, this.peso, this.tamanho);

  // ***** Métodos ***** //
  // Método que devolve as informações do celular em uma string
  String toString() {
    String information =
        "Celular do ${this.dono}: \nCor: ${this.cor} \nQuantidade de processadores: ${this.qtdProcessadores} \nPeso: ${this.peso} \nTamanho: ${this.tamanho}";
    return information;
  }

  // Método que devolve o valor do celular de acordo com a quantidade de processadores
  double valorDoCelular(double valor) {
    return valor * this.qtdProcessadores;
  }
}

void main() {
  // Instanciando classes
  Celular celularDoJoao = Celular('João', 'Preto', 5, 0.80, 5.7);
  Celular celularDoPaulo = Celular('Paulo', 'Roxo', 4, 0.90, 5.7);

  // Acessando atributos das instâncias
  print(
      'Cor do celular do João: ${celularDoJoao.cor}, \nEle tem ${celularDoJoao.qtdProcessadores} processadores');
  print(
      'Cor do celular do Paulo: ${celularDoPaulo.cor}, \nEle tem ${celularDoPaulo.qtdProcessadores} processadores');

  // Acessando métodos das instâncias
  print("\n\n");
  print(celularDoJoao.toString());
  print("\n\n");
  print(celularDoPaulo.toString());

  double valorJoao = celularDoJoao.valorDoCelular(1000);
  double valorPaulo = celularDoPaulo.valorDoCelular(988);

  print("Valor do celular do João: ${valorJoao} reais.");
  print("Valor do celular do Paulo: ${valorPaulo} reais.");
}
