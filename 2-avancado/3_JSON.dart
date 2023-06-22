import 'dart:convert';

void main() {
  // *** JSON *** //
  String json = '''
  [
    {
      "usuario" : "joao@gmail.com",
      "senha" : "!@#¨%"
    },
    {
      "usuario" : "james@gmail.com",
      "senha" : 132456
    }
  ]
 ''';

  // *** JSON DECODE *** //
  print(json);
  var decodedJson = jsonDecode(json);
  print(decodedJson);

  for (int i = 0; i < decodedJson.length; i++) {
    print(" Posição: $i - ${decodedJson[i]}");
    decodedJson[i]
        .forEach((key, value) => key == 'usuario' ? print(value) : null);
  }

  // *** JSON ENCODE *** //
  Map mapa = {
    'nome': 'João Lucas',
    'idade': 21,
    'irmaos': ['Ana Cecília', 'João Pedro']
  };
  print("\n\n$mapa");

  var encodedMap = jsonEncode(mapa);
  print("\n\n\n $encodedMap");
}
