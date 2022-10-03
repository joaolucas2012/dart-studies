import 'dart:io';

void main() {
  /* 
    26) Faça um algoritmo para ler: quantidade atual em estoque, quantidade máxima em estoque e quantidade mínima em estoque de um produto. Calcular e escrever a quantidade média ((quantidade média = quantidade máxima + quantidade mínima)/2). Se a quantidade em estoque for maior ou igual a quantidade média escrever a mensagem 'Não efetuar compra', senão escrever a mensagem 'Efetuar compra'. 
  */
  int qtdAtualEstoque =
      askAndGetCorrespondingValue("Digite a quantidade atual de estoque: ");
  int qtdMaximaEstoque =
      askAndGetCorrespondingValue("Digite a quantidade máxima de estoque: ");
  int qtdMinimaEstoque =
      askAndGetCorrespondingValue("Digite a quantidade mínima de estoque: ");
  double qtdMediaEstoque =
      calcAverageQuantity(qtdMaximaEstoque, qtdMinimaEstoque);

  print("Quantidade média de estoque: $qtdMediaEstoque");
  verifyQuantity(qtdAtualEstoque, qtdMediaEstoque);
}

// funções
int askAndGetCorrespondingValue(String frase) {
  print("$frase");
  return int.parse(stdin.readLineSync()!);
}

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
