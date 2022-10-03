import '0-funcao-global-leitura-de-valores.dart' as global;

void main() {
  /* 
  14) Ler um valor e escrever a mensagem É MAIOR QUE 10! se o valor lido for maior que 10, caso contrário escrever NÃO É MAIOR QUE 10! 
  */
  verifyNumber(global.askAndGetCorrespondingIntValue("Digite um número: "));
}

// funções
void verifyNumber(int number) {
  if (number > 10) {
    print("É MAIOR QUE 10!");
  } else {
    print("NÃO É MAIOR QUE 10!");
  }
}
