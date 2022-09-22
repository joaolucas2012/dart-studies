void main() {
  // Estruturas de fluxo
  // bool seguirEmFrente = false;
  bool seguirEmFrente = true;

  // **** IF **** //
  if (seguirEmFrente) {
    print('Andar');
  } else {
    print('Parar');
  }

  // **** SWITCH **** //
  int valor = 2;
  switch (valor) {
    case 0:
      print('Zero');
      break;
    case 1:
      print('Um');
      break;
    case 2:
      print('Dois');
      break;
    default:
      print('Padrão');
  }
}
