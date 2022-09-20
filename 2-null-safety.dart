void main() {
  // Null-safety

  // ? significa que a variavel pode ser nula
  String? nome;
  nome = 'ABC';

  // ! significa que a variavel não pode ser nula
  print(nome!);

  // Com o late, uma vez que a variável recebe um valor, ela nunca mais pode ser nula
  late String sobrenome;
  sobrenome = 'Cris';
  print(sobrenome);

  //***** Isso gera um erro *****//
  // sobrenome = null;
  // print(sobrenome);
}
