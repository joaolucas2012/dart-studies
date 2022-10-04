import '0-funcao-global-leitura-de-valores.dart' as global;

void main() {
  /* 
  20) Ler dois valores (considere que não serão lidos valores iguais) e escrevê-los em ordem crescente. 
  */
  List<int> values = [];
  for (int i = 0; i < 2; i++) {
    values.add(global.askAndGetCorrespondingIntValue("Digite o valor $i:"));
  }

  printResult(orderNumbers(values));
}

// Funções
List orderNumbers(List numbers) {
  late int temp;
  if (numbers[0] < numbers[1]) {
    // Já está ordenado
    return numbers;
  } else {
    temp = numbers[1];
    numbers[1] = numbers[0];
    numbers[0] = temp;
    return numbers;
  }
}

void printResult(List ordenedNumbers) {
  print("Os numeros em ordem crescente são:\n$ordenedNumbers");
}
