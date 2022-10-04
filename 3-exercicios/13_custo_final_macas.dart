import '0-funcao-global-leitura-de-valores.dart' as global;

void main() {
  /* 
  16) As maçãs custam R$ 1,30 cada se forem compradas menos de uma dúzia, e R$ 1,00 se forem
  compradas pelo menos 12. Escreva um programa que leia o número de maçãs compradas, calcule e
  escreva o custo total da compra. 
  */
  int numApplesBought = global
      .askAndGetCorrespondingIntValue("Digite o número de maçãs compradas:");

  printResult(
      calcFinalCost(numApplesBought, verifyApplesPrice(numApplesBought)));
}

// Funções
double verifyApplesPrice(int numApplesBought) {
  if (numApplesBought < 12) {
    return 1.30;
  } else {
    return 1.00;
  }
}

double calcFinalCost(int numApplesBought, double cost) {
  return numApplesBought * cost;
}

void printResult(double finalCost) {
  print("O custo total da compra é ${finalCost.toStringAsFixed(2)}");
}
