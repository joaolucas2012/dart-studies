import '0-funcao-global-leitura-de-valores.dart' as global;

void main() {
  /* 
  22) A jornada de trabalho semanal de um funcionário é de 40 horas. O funcionário que trabalhar mais de 40 horas receberá hora extra, cujo cálculo é o valor da hora regular com um acréscimo de 50%. Escreva um algoritmo que leia o número de horas trabalhadas em um mês, o salário por hora e escreva o salário total do funcionário, que deverá ser acrescido das horas extras, caso tenham sido trabalhadas (considere que o mês possua 4 semanas exatas). 
  */
  int horasTrabalhadas = global.askAndGetCorrespondingIntValue(
      "Digite o número de horas trabalhadas no mês: ");
  double salarioPorHora = global.askAndGetCorrespondingDoubleValue(
      "Digite o salário recebido por hora: ");

  printResult(calcSalary(horasTrabalhadas, salarioPorHora));
}

// Funções
double calcSalary(int horasTrabalhadas, double salarioPorHora) {
  if (horasTrabalhadas > 160) {
    int horasExtras = (horasTrabalhadas - 160);
    double salarioHoraExtra = calcValorHoraExtra(salarioPorHora);
    return ((horasTrabalhadas - horasExtras) * salarioPorHora) +
        horasExtras * salarioHoraExtra;
  } else {
    return horasTrabalhadas * salarioPorHora;
  }
}

double calcValorHoraExtra(double salarioPorHora) {
  return salarioPorHora + salarioPorHora * 0.5;
}

printResult(double salarioFinal) {
  print("O salário final é ${salarioFinal.toStringAsFixed(2)}");
}
