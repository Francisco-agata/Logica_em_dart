// Objetivo
// Encontrar o valor do saldo devedor de um consórcio.

// Instruções
// Considerando que, para um consórcio, sabe-se o número total de parcelas, a quantidade de parcelas pagas e o valor da parcela (fixa);
// Escreva um algoritmo em Dart para calcular o saldo devedor do cliente.
// Mostre na tela o valor total do consórcio e o saldo devedor.
// Casos de Testes
// Entrada:
//   Total de Parcelas: 60
//   Número de parcelas pagas: 18
//   Valor das parcelas: R$ 566.78

// Saída:
//   Valor total do consórcio: R$ 34006.80
//   Saldo devedor: R$ 23804.76

void main() {
  int totalParcelas, numeroParcelasPagas;
  double valorParcela, totalDevedor, saldoDevedor;

  totalParcelas = 60;
  numeroParcelasPagas = 18;
  valorParcela = 566.78;

  totalDevedor = valorParcela * totalParcelas;
  saldoDevedor = totalDevedor - numeroParcelasPagas * valorParcela;

  print("Total de Parcelas: $totalParcelas");
  print("Número de parcelas pagas: $numeroParcelasPagas");
  print("Valor das parcelas: $valorParcela");
  print("Valor total do consórcio: ${totalDevedor.toStringAsFixed(2)}");
  print("Saldo devedor: ${saldoDevedor.toStringAsFixed(2)}");
}