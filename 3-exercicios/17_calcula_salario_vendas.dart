import '0-funcao-global-leitura-de-valores.dart' as global;

void main() {
  /* 
  24) Ler o salário fixo e o valor das vendas efetuadas pelo vendedor de uma empresa. Sabendo-se que ele recebe uma comissão de 3% sobre o total das vendas até R$ 1.500,00 mais 5% sobre o que ultrapassar este valor, calcular e escrever o seu salário total. 
  */
  double salarioFixo =
      global.askAndGetCorrespondingDoubleValue("Digite seu salário fixo:");
  double valorVendasEfetuadas = global.askAndGetCorrespondingDoubleValue(
      "Digite o valor total das vendas efetuadas:");

  double comissionPercentage = checkComissionPercentage(valorVendasEfetuadas);
  double comission = calcComission(valorVendasEfetuadas, comissionPercentage);

  printResult(calcTotalSalary(salarioFixo, comission));
}

// Funções
double checkComissionPercentage(double valorVendasEfetuadas) {
  return valorVendasEfetuadas <= 1500.00 ? 0.03 : 0.05;
}

double calcComission(double valorVendasEfetuadas, double comissionPercentage) {
  return valorVendasEfetuadas * comissionPercentage;
}

double calcTotalSalary(double salarioFixo, double comission) {
  return salarioFixo + comission;
}

printResult(double salarioTotal) {
  print("O salário total é ${salarioTotal.toStringAsFixed(2)}");
}
