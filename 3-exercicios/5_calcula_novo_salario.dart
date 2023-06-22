import '0_funcao_global_leitura_de_valores.dart' as global;

void main() {
  /* 9) Escreva um algoritmo para ler o salário mensal atual de um funcionário e o percentual de reajuste. Calcular e escrever o valor do novo salário.  
  */
  double salarioMensalAtual = global
      .askAndGetCorrespondingDoubleValue("Digite seu salário mensal atual: ");
  double percentualDeReajuste = global.askAndGetCorrespondingDoubleValue(
          "Digite o percentual de reajuste: ") /
      100;

  printNewSalary(calcNewSalary(salarioMensalAtual, percentualDeReajuste));
}

// funções
double calcNewSalary(double salary, double percentage) {
  return salary + salary * percentage;
}

void printNewSalary(double newSalary) {
  print("O seu novo salário é: $newSalary.");
}
