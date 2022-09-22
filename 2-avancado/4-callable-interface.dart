class BuscarAlunos {
  void call() => print("João, Lucas, Fabio"); // Callable interface
}

void main() {
  // *** CALLABLE INTERFACE *** //
  BuscarAlunos buscarAlunos = BuscarAlunos();
  buscarAlunos();
}
