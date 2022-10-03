import 'dart:io';

void main() {
  /*
  10) O custo de um carro novo ao consumidor é a soma do custo de fábrica com a porcentagem do distribuidor e dos impostos (aplicados ao custo de fábrica). Supondo que o percentual do distribuidor seja de 28% e os impostos de 45%, escrever um algoritmo para ler o custo de fábrica de um carro, calcular e escrever o custo final ao consumidor. 
  */
  double percentualDistribuidor = 0.28;
  double impostos = 0.45;
  double custoDeFabrica =
      askAndGetCorrespondingValue("Digite o custo de fábrica do carro: ");

  printNewCarCost(
      calcFinalCost(custoDeFabrica, percentualDistribuidor, impostos));
}

// funções
double askAndGetCorrespondingValue(String frase) {
  print("$frase");
  return double.parse(stdin.readLineSync()!);
}

double calcFinalCost(
    double custoDeFabrica, double percentualDistribuidor, double impostos) {
  return custoDeFabrica +
      percentualDistribuidor * custoDeFabrica +
      impostos * custoDeFabrica;
}

void printNewCarCost(double finalCost) {
  print("O custo final do carro novo é: $finalCost.");
}
