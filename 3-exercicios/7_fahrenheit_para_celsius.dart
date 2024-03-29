import '0_funcao_global_leitura_de_valores.dart' as global;

void main() {
  /* 
    12) Escreva um algoritmo para ler uma temperatura em graus Fahrenheit, calcular e escrever o valor correspondente em graus Celsius (baseado na fórmula abaixo): 
        C          F - 32
    ---------- = ----------
        5            9 
  */
  /* 
        C          F - 32           5F - 160
    ---------- = ---------- => C = ----------
        5            9                  9
  */
  double fahrenheit = global.askAndGetCorrespondingDoubleValue(
      "Digite a temperatura em graus Fahrenheit: ");

  printCelsius(fahrenheit, convertFahrenheitToCelsius(fahrenheit));
}

// funções
double convertFahrenheitToCelsius(double fahrenheit) {
  return (5 * fahrenheit - 160) / 9;
}

void printCelsius(double fahrenheit, double celsius) {
  print(
      "$fahrenheit graus Fahrenheit equivalem a ${celsius.toStringAsFixed(2)} graus Celsius.");
}
