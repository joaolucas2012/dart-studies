import '0-funcao-global-leitura-de-valores.dart' as global;

void main() {
  /* 
    25) Faça um algoritmo para ler: número da conta do cliente, saldo, débito e crédito. Após, calcular e escrever o saldo atual (saldo atual = saldo - débito + crédito). Também testar se saldo atual for maior ou igual a zero escrever a mensagem 'Saldo Positivo', senão escrever a mensagem 'Saldo Negativo'. 
  */
  double numConta =
      global.askAndGetCorrespondingDoubleValue("Digite o numero da conta: ");
  double saldo = global.askAndGetCorrespondingDoubleValue("Digite seu saldo: ");
  double debito = global.askAndGetCorrespondingDoubleValue("Digite o débito: ");
  double credito =
      global.askAndGetCorrespondingDoubleValue("Digite o crédito: ");

  double saldoAtual = calcSaldoAtual(saldo, debito, credito);
  print("\nSaldo atual: $saldoAtual\n");
  printResult(numConta, verificaSaldoAtual(saldoAtual));
}

// funções
double calcSaldoAtual(double saldo, double debito, double credito) {
  return saldo - debito + credito;
}

String verificaSaldoAtual(double saldoAtual) {
  return saldoAtual >= 0 ? "Positivo" : "Negativo";
}

void printResult(double numConta, String saldoAtualVerificado) {
  print("Conta: ${numConta.toInt()}\nSaldo $saldoAtualVerificado");
}
