import '0_funcao_global_leitura_de_valores.dart' as global;

void main() {
  /* 
    26) Faça um algoritmo para ler: quantidade atual em estoque, quantidade máxima em estoque e quantidade mínima em estoque de um produto. Calcular e escrever a quantidade média ((quantidade média = quantidade máxima + quantidade mínima)/2). Se a quantidade em estoque for maior ou igual a quantidade média escrever a mensagem 'Não efetuar compra', senão escrever a mensagem 'Efetuar compra'. 
  */
  int qtdAtualEstoque = global
      .askAndGetCorrespondingIntValue("Digite a quantidade atual de estoque: ");
  int qtdMaximaEstoque = global.askAndGetCorrespondingIntValue(
      "Digite a quantidade máxima de estoque: ");
  int qtdMinimaEstoque = global.askAndGetCorrespondingIntValue(
      "Digite a quantidade mínima de estoque: ");
  double qtdMediaEstoque =
      calcAverageQuantity(qtdMaximaEstoque, qtdMinimaEstoque);

  print("Quantidade média de estoque: $qtdMediaEstoque");
  verifyQuantity(qtdAtualEstoque, qtdMediaEstoque);
}

// funções
double calcAverageQuantity(int qtdMaximaEstoque, int qtdMinimaEstoque) {
  return (qtdMaximaEstoque + qtdMinimaEstoque) / 2;
}

void verifyQuantity(int qtdAtualEstoque, double qtdMediaEstoque) {
  if (qtdAtualEstoque >= qtdMediaEstoque) {
    print("Não efetuar compra");
  } else {
    print("Efetuar compra");
  }
}
