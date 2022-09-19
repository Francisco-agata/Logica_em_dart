// Objetivo
// Encontrar o desconto de 10% sobre o preço de compra de um produto.

// Instruções
// Escreva um algoritmo em Dart para calcular o desconto de 10% sobre o preço de compra de um produto (um bem, um objeto).
// Apresente o novo preço na tela.

void main() {
  double precoProduto, valorDesconto, novoPreco;

  precoProduto = 157.34;

  valorDesconto = precoProduto / 100 * 100;
  novoPreco = precoProduto - valorDesconto;

  print("Preço do produto: R\$ ${precoProduto.toStringAsFixed(2)}");
  print("Desconto de 10%: R\$ ${valorDesconto.toStringAsFixed(2)}");
  print("Preço do produto com desconto: R\$ ${novoPreco.toStringAsFixed(2)}");
}
