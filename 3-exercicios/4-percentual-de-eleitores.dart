import 'dart:io';

void main() {
  /*
  8) Escreva um algoritmo para ler o número total de eleitores de um município, o número de votos brancos, nulos e válidos. Calcular e escrever o percentual que cada um representa em relação ao total de eleitores. 
  */
  int allVoters =
      askAndGetCorrespondingIntValue("Digite o número total de eleitores: ");
  int blankVotes =
      askAndGetCorrespondingIntValue("Digite o número de votos brancos: ");
  int nullVotes =
      askAndGetCorrespondingIntValue("Digite o número de votos nulos: ");
  int validVotes =
      askAndGetCorrespondingIntValue("Digite o número de votos válidos: ");

  printPercentage("votos brancos", calcPercentage(blankVotes, allVoters));
  printPercentage("votos nulos", calcPercentage(nullVotes, allVoters));
  printPercentage("votos válidos", calcPercentage(validVotes, allVoters));
}

// funções
int askAndGetCorrespondingIntValue(String frase) {
  print("$frase");
  return int.parse(stdin.readLineSync()!);
}

double calcPercentage(int value, int total) {
  return value / total * 100;
}

void printPercentage(String reference, double percentage) {
  print(
      "A porcentagem de $reference em relação ao total de eleitores é $percentage%.");
}
