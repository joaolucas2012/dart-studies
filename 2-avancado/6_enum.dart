void main() {
  // *** ENUM *** //
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.BOLETO);
}

enum TipoPagamento {
  PIX,
  BOLETO,
  CARTAO;
}

extension ExtensionTipoPagamento on TipoPagamento {
  String toValue() {
    Map map = {
      TipoPagamento.PIX: 'Pix',
      TipoPagamento.BOLETO: 'Boleto',
      TipoPagamento.CARTAO: 'Cartao',
    };

    return map[this];
  }
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.toValue() == 'Pix') {
      print('Pagando com pix...');
    } else if (tipoPagamento.toValue() == 'Boleto') {
      print('Pagando com boleto...');
    } else if (tipoPagamento.toValue() == 'Cartao') {
      print('Pagando com cartão...');
    }
  }
}
