import '0_funcao_global_leitura_de_valores.dart' as global;

void main() {
  /* 
  Leia quatro números (N1, N2, N3, N4), cada um deles com uma casa decimal, correspondente às quatro notas de um aluno. Calcule a média com pesos 2, 3, 4 e 1, respectivamente, para cada uma destas notas e mostre esta média acompanhada pela mensagem "Media: ". Se esta média for maior ou igual a 7.0, imprima a mensagem "Aluno aprovado.". Se a média calculada for inferior a 5.0, imprima a mensagem "Aluno reprovado.". Se a média calculada for um valor entre 5.0 e 6.9, inclusive estas, o programa deve imprimir a mensagem "Aluno em exame.".

  No caso do aluno estar em exame, leia um valor correspondente à nota do exame obtida pelo aluno. Imprima então a mensagem "Nota do exame: " acompanhada pela nota digitada. Recalcule a média (some a pontuação do exame com a média anteriormente calculada e divida por 2). e imprima a mensagem "Aluno aprovado." (caso a média final seja 5.0 ou mais ) ou "Aluno reprovado.", (caso a média tenha ficado 4.9 ou menos). Para estes dois casos (aprovado ou reprovado após ter pego exame) apresente na última linha uma mensagem "Media final: " seguido da média final para esse aluno.
  */

  List<double> notas = [];

  // Recebendo valores
  for (int i = 0; i < 4; i++) {
    notas.add(global.askAndGetCorrespondingDoubleValue("Digite a nota N$i:"));
  }

  // Gerando resultado
  double mediaPonderada = calcAverage(notas);
  printResult(mediaPonderada, checkAverage(mediaPonderada));
}

// Funções
double calcAverage(List<double> listaNotas) {
  double n1 = listaNotas[0];
  double n2 = listaNotas[1];
  double n3 = listaNotas[2];
  double n4 = listaNotas[3];

  return (n1 * 2 + n2 * 3 + n3 * 4 + n4) / 10;
}

String checkAverage(double average) {
  if (average >= 7.0) {
    return "Aluno aprovado.";
  } else if (average < 5.0) {
    return "Aluno reprovado.";
  } else {
    return "Aluno em exame.";
  }
}

String checkFinalAverage(double finalAverage) {
  if (finalAverage >= 5.0) {
    return "Aluno aprovado.";
  } else {
    return "Aluno reprovado.";
  }
}

double calcArithmeticAverage(double val1, double val2) {
  return (val1 + val2) / 2;
}

void printResult(double average, String situation) {
  if (situation == "Aluno em exame.") {
    print("\nMedia: ${average.toStringAsFixed(1)}\n$situation\n");
    double notaExame =
        global.askAndGetCorrespondingDoubleValue("Digite a nota do exame:");
    print("\nNota do exame: ${notaExame.toStringAsFixed(1)}");
    double mediaFinal = calcArithmeticAverage(average, notaExame);
    print(
        "${checkFinalAverage(mediaFinal)}\nMedia final: ${mediaFinal.toStringAsFixed(1)}");
  } else {
    print("\nMedia: ${average.toStringAsFixed(1)}\n$situation");
  }
}
