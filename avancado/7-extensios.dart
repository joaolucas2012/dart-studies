void main() {
  // **** EXTENSIONS **** //
  // Extensions dão um superpoder a mais para qualquer objeto no Dart
  String nome = "joão";
  int teste = 32;
  print(nome);
  print(nome.toUpperCase());
  print(nome.toString());
  print(Utils().toFisrtCharToUppercase(nome));

  // Teste extension pra strings
  print(nome.toFisrtCharToUppercase());
  print('carina'.toFisrtCharToUppercase());

  // Teste extension pra enum
  print(EnumTest.enumValue.toValue());
  print(EnumTest.enumNovo.toValue());

  // Teste extension pra inteiros
  print(3.plusTwoValue());
  print(teste.plusTwoValue());
}

// Extension
// Essa extensão será acessada por qualquer string!
extension ExtensionsString on String {
  String toFisrtCharToUppercase() {
    return this[0].toUpperCase() + this.substring(1);
  }
}

class Utils {
  toFisrtCharToUppercase(String value) {
    return value[0].toUpperCase() + value.substring(1);
  }
}

// Dando um poder a mais para o enum
enum EnumTest {
  enumValue,
  enumNovo;
}

extension ExtensiosnEnum on Enum {
  String toValue() {
    Map map = {EnumTest.enumValue: 'xpto', EnumTest.enumNovo: 'Novo valor'};
    return map[this];
  }
}

// Dando um poder a mais para um objeto do tipo int
extension ExtensionsInt on int {
  int plusTwoValue() {
    return this * 2;
  }
}
