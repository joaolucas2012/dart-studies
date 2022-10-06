import '0-funcao-global-leitura-de-valores.dart' as global;

void main() {
  /* 
   Tendo como dados de entrada o nome, a altura e o sexo (M ou F) de uma pessoa, calcule e mostre seu peso ideal, utilizando as seguintes fórmulas:
    - para sexo masculino: peso ideal = (72.7 * altura) - 58
    - para sexo feminino: peso ideal = (62.1 * altura) - 44.7 
  */

  String nome = global.askAndGetCorrespondingStringValue("Digite seu nome: ");
  double altura =
      global.askAndGetCorrespondingDoubleValue("Digite sua altura: ");
  String sexo = global
      .askAndGetCorrespondingStringValue("Digite seu sexo (M ou F): ")
      .toUpperCase();

  printResult(nome, calcPesoIdeal(sexo, altura));
}

// Funções
double calcPesoIdeal(String sexo, double altura) {
  if (sexo == "M") {
    return (72.7 * altura) - 58;
  } else if (sexo == "F") {
    return (62.1 * altura) - 44.7;
  } else {
    return -1;
  }
}

void printResult(String nome, double pesoIdeal) {
  if (pesoIdeal != -1) {
    print("$nome, seu peso ideal é ${pesoIdeal.toStringAsFixed(2)}kg.");
  } else {
    print("O sexo precisa ser M ou F!");
  }
}
