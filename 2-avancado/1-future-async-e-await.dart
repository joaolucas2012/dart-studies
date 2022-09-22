void main() async {
  // ***** FUTURE, ASYNC E AWAIT ***** //
  String nome = "João";
  late String cep;
  late int result;

  // Future
  Future<String> cepFuturo = getCepByName("Rua JK");
  // cepFuturo.then((resultado) => cep = resultado);
  cep = await cepFuturo;
  print(cep);

  Future<int> teste = somaValores(3, 4, 5, 6);
  result = await teste + 2;
  print(result);
}

// external service
Future<String> getCepByName(String name) {
  // Simulando uma requisição a uma api externa
  return Future.value("37514000");
}

Future<int> somaValores(int a, int b, int c, int d) {
  return Future.value(a + b + c + d);
}
