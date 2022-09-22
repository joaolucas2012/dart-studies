void main() {
  // **** ENHANCED ENUM **** //
  // É um enum mais atualizado //
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.BOLETO);
  pagamento.pagar(TipoPagamento.PIX);
  pagamento.pagar(TipoPagamento.CARTAO);
}

enum TipoPagamento {
  // PIX, BOLETO, CARTAO;
  PIX(1, 'Pix'),
  BOLETO(2, 'Boleto'),
  CARTAO(3, 'Cartao');

  final int id;
  final String value;
  // Construtor
  const TipoPagamento(this.id, this.value);
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.value == 'Pix') {
      print('ID: ${TipoPagamento.PIX.id} Pagando com pix...');
    } else if (tipoPagamento.value == 'Boleto') {
      print('ID: ${TipoPagamento.BOLETO.id} Pagando com boleto...');
    } else if (tipoPagamento.value == 'Cartao') {
      print('ID: ${TipoPagamento.CARTAO.id} Pagando com cartão...');
    }
  }
}
