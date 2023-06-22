void main() {
  try {
    // Tentar fazer alguma coisa
    print(2 ~/ 0);
  } catch (e, stackSTrace) {
    // pegar o erro
    print("\n\nErro: $e\n\n\nPilha de erros:\n\n$stackSTrace");
    //rethrow; // propagar o erro mesmo assim
    throw CustomErr("Ocorreu um errooooo");
  } finally {
    print("Acabou");
  }

  String email = "J@gmail.com";
  String password = '123';
  if (!email.contains('@')) throw CustomErr('Email incorreto!');
  if (password.length < 6) throw PasswordLengthError;
}

// Exceptions
class CustomErr implements Exception {
  final String error;
  CustomErr(this.error);
}

class PasswordLengthError implements Exception {
  PasswordLengthError();
}
