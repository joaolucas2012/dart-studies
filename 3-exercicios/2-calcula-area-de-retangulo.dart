double calculaArea(double base, double altura) {
  return base * altura;
}

void main() {
  /* 
    6) Escreva um algoritmo para ler as dimensões de um retângulo (base e altura), calcular e escrever a área do retângulo.
  */
  print("A área do retângulo é: ${calculaArea(2.7, 6).toStringAsFixed(2)}");
}
