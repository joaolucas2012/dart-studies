import 'dart:io';

void main() {
  /* 9) Escreva um algoritmo para ler o salário mensal atual de um funcionário e o percentual de reajuste. Calcular e escrever o valor do novo salário.  
  */
  double salarioMensalAtual =
      askAndGetCorrespondingIntValue("Digite seu salário mensal atual: ");
  double percentualDeReajuste =
      askAndGetCorrespondingIntValue("Digite o percentual de reajuste: ") / 100;

  printNewSalary(calcNewSalary(salarioMensalAtual, percentualDeReajuste));
}

// funções
double askAndGetCorrespondingIntValue(String frase) {
  print("$frase");
  return double.parse(stdin.readLineSync()!);
}

double calcNewSalary(double salary, double percentage) {
  return salary + salary * percentage;
}

void printNewSalary(double newSalary) {
  print("O seu novo salário é: $newSalary.");
}
