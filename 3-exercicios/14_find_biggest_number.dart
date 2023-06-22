import '0_funcao_global_leitura_de_valores.dart' as global;

void main() {
  /* 
  19) Ler dois valores (considere que não serão lidos valores iguais) e escrever o maior deles. 
  */
  List<int> values = [];
  for (int i = 0; i < 2; i++) {
    values.add(global.askAndGetCorrespondingIntValue("Digite o valor $i:"));
  }

  printResult(findBiggestNumber(values));
}

// Funções
int findBiggestNumber(List<int> numbers) {
  return numbers[0] > numbers[1] ? numbers[0] : numbers[1];
}

void printResult(int biggestNumber) {
  print("O maior valor digitado é: $biggestNumber");
}
