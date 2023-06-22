import '0_funcao_global_leitura_de_valores.dart' as global;

void main() {
  /* 
    6) Escreva um algoritmo para ler as dimensões de um retângulo (base e altura), calcular e escrever a área do retângulo.
  */
  String unidadeDeMedida =
      global.askAndGetCorrespondingStringValue("Qual a unidade de medida? ");
  double base = global.askAndGetCorrespondingDoubleValue("Base: ");
  double altura = global.askAndGetCorrespondingDoubleValue("Altura: ");
  print(
      "A área do retângulo é: ${calculaArea(base, altura).toStringAsFixed(2)} $unidadeDeMedida²");
}

// funções
double calculaArea(double base, double altura) {
  return base * altura;
}
