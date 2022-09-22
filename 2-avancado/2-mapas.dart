void main() {
  // **** MAPAS **** //
  // Mapas são uma sequência de objetos que possuem uma chave pra cada valor

  // **** Essa é uma lista **** //
  List<String> lista = ['João', 'Lucas'];
  for (int i = 0; i < lista.length; i++) {
    print(lista[i]);
  }

  // **** Esse é um MAPA **** //
  // Map<String, String> mapa = {'chave': 'valor'};
  Map<String, String> mapa = {'nome': 'Donald'};
  print(mapa);
  print(mapa['nome']);

  // Adicionar valores a um mapa se a chava ainda não existir
  mapa.putIfAbsent('nome2', () => 'Dep');
  print(mapa);

  // Adicionar valores novos pelo índice
  mapa['nome3'] = 'Tati';
  print(mapa);

  // Remover valores através da chave
  mapa.remove('nome');
  print(mapa);

  // Atualizar um valor pela chave
  mapa['nome2'] = 'Cris';
  print(mapa);

  // Atualizar valores pelo update
  mapa.update('nome3', (value) => 'James Fox');
  print(mapa);

  // Iterações no mapa
  mapa.forEach((chave, valor) => print('A chave é $chave, o valor é $valor'));
  // Iterações no mapa pelas chaves
  mapa.keys.forEach(print);
  // Iterações no mapa pelos valores
  mapa.values.forEach(print);
}
