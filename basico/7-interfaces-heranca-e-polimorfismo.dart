// **** Interfaces, herança e polimorfismo **** //

// O DART NÃO POSSUI INTERFACE, ELE POSSUI ABSTRACT CLASSES, OU SEJA, MODELOS DE NEGÓCIO QUE PRECISAM SER SEGUIDOS //
abstract class Pessoa {
  String comunicar();
}

// Classes //
class PessoaET implements Pessoa {
  String comunicar() {
    return "Olá Terra";
  }
}

class PessoaNaoET implements Pessoa {
  String comunicar() {
    return "Bom dia";
  }
}

// **** Herança **** //
class Pai {
  String falar() {
    return "Verdades";
  }
}

class Filho extends Pai {
  String habilidade() {
    return "Cantar";
  }
}
// ********************** //

// **** Polimorfismo **** //
abstract class Pagamento {
  void pagar();
}

class PagarComCartao implements Pagamento {
  void pagar() {
    print("Paguei com cartão");
  }
}

class PagarComBoleto implements Pagamento {
  void pagar() {
    print("Paguei com boleto");
  }
}
// *********************** //

void main() {
  // Teste de herança
  Filho joao = Filho();
  print(joao.falar());
  print(joao.habilidade());

  // Teste de polimorfismo
  PagarComBoleto jonas = PagarComBoleto();
  jonas.pagar();
  PagarComCartao junior = PagarComCartao();
  junior.pagar();
}
