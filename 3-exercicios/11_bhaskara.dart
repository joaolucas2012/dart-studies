import 'dart:math';
import '0_funcao_global_leitura_de_valores.dart' as global;

void main() {
  /* 
  Leia 3 valores de ponto flutuante e efetue o cálculo das raízes da equação de Bhaskara. Se não for possível calcular as raízes, mostre a mensagem correspondente “Impossivel calcular”, caso haja uma divisão por 0 ou raiz de numero negativo.

  Nota:
  A = primeiro valor
  B = segundo valor
  C = terceiro valor

  Fórmula de Bhaskara:
  x = (-b +- raiz quadrada de Delta)/(2*a)

  Fórmula de Delta:
  b² - 4*a*c
  */

  List<double> listaNumeros = [];
  // Recebendo os valores de ponto flutuante
  for (int i = 0; i < 3; i++) {
    listaNumeros
        .add(global.askAndGetCorrespondingDoubleValue("Digite o valor $i:"));
  }

  // Teste
  double delta =
      calculaDelta(listaNumeros[0], listaNumeros[1], listaNumeros[2]);
  double raizDeDelta = calculaRaizDeDelta(delta);
  printResult(
      calculaRaizesBhaskara(listaNumeros[0], listaNumeros[1], raizDeDelta));
}

// Funções
double calculaDelta(double a, double b, double c) {
  return (b * b) - (4 * a * c);
}

double calculaRaizDeDelta(double delta) {
  return delta >= 0 ? sqrt(delta) : -1.0;
}

List calculaRaizesBhaskara(double a, double b, double raizDeDelta) {
  List<double> listaRaizes = [];
  if (raizDeDelta < 0 || a == 0.0) {
    listaRaizes.add(-1.0);
    return listaRaizes;
  } else {
    listaRaizes.add((raizDeDelta - b) / (2 * a));
    listaRaizes.add((-b - raizDeDelta) / (2 * a));
    return listaRaizes;
  }
}

void printResult(List raizes) {
  if (raizes[0] == -1.0) {
    print("Impossivel calcular");
  } else {
    print(
        "R1 = ${raizes[0].toStringAsFixed(5)}\nR2 = ${raizes[1].toStringAsFixed(5)}");
  }
}
