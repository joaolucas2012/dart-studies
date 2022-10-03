import 'dart:io';

// Funções
int askAndGetCorrespondingIntValue(String frase) {
  print("$frase");
  return int.parse(stdin.readLineSync()!);
}

double askAndGetCorrespondingDoubleValue(String frase) {
  print("$frase");
  return double.parse(stdin.readLineSync()!);
}

String askAndGetCorrespondingStringValue(String frase) {
  print("$frase");
  return stdin.readLineSync()!;
}
