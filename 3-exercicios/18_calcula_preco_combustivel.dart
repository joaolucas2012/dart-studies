import '0-funcao-global-leitura-de-valores.dart' as global;

void main() {
  /* 
  35) Um posto está vendendo combustíveis com a seguinte tabela de descontos:
  até 20 litros, desconto de 3% por litro Álcool acima de 20 litros, desconto de 5% por litro até 20 litros, desconto de 4% por litro Gasolina acima de 20 litros, desconto de 6% por litro

  Escreva um algoritmo que leia o número de litros vendidos e o tipo de combustível (codificado da seguinte forma: A-álcool, G-gasolina), calcule e imprima o valor a ser pago pelo cliente sabendo-se que o preço do litro da gasolina é R$ 3,30 e o preço do litro do álcool é R$ 2,90. 
  */
  double litrosVendidos = global.askAndGetCorrespondingDoubleValue(
      "Digite o número de litros vendidos: ");
  String tipoCombustivel = global
      .askAndGetCorrespondingStringValue(
          "Digite o tipo do combustível ('A' para Álcool ou 'G' para gasolina):")
      .toUpperCase();

  printResult(
      calculaValorASerPago(litrosVendidos, tipoCombustivel), litrosVendidos);
}

// Funções
double calculaDescontoAlcool(double litrosVendidos) {
  double price = litrosVendidos * 2.9;
  return (litrosVendidos <= 20.00)
      ? price - price * 0.03
      : price - price * 0.05;
}

double calculaDescontoGasolina(double litrosVendidos) {
  double price = litrosVendidos * 3.3;
  return (litrosVendidos <= 20.00)
      ? price - price * 0.04
      : price - price * 0.06;
}

double calculaValorASerPago(double litrosVendidos, String tipoCombustivel) {
  if (tipoCombustivel == "A") {
    return calculaDescontoAlcool(litrosVendidos);
  } else if (tipoCombustivel == "G") {
    return calculaDescontoGasolina(litrosVendidos);
  } else {
    return 0;
  }
}

void printResult(double valor, double litrosVendidos) {
  if (valor > 0 && litrosVendidos > 0) {
    print("O valor a ser pago é ${valor.toStringAsFixed(2)}");
  } else if (litrosVendidos <= 0) {
    print("A quantidade é inválida!");
  } else {
    print("O tipo de combustível é inválido!");
  }
}
