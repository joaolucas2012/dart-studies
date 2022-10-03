import 'dart:io';

void main() {
  /* 
  7) Faça um algoritmo que leia a idade de uma pessoa expressa em anos, meses e dias e escreva a idade dessa pessoa expressa apenas em dias. Considerar ano com 365 dias e mês com 30 dias. 
  */
  print("Digite quantos anos você tem: ");
  int anos = yearsToDays(int.parse(stdin.readLineSync()!));
  print("Digite quantos meses você tem: ");
  int meses = monthsToDays(int.parse(stdin.readLineSync()!));
  print("Digite quantos dias você tem: ");
  int dias = int.parse(stdin.readLineSync()!);

  print("Você tem ${sumDays(anos, meses, dias)} dias de vida!");
}

// Funções
int yearsToDays(int years) {
  return years * 365;
}

int monthsToDays(int months) {
  return months * 30;
}

int sumDays(int years, int months, int days) {
  return years + months + days;
}
