// Objetivo
// Encontrar o desconto informado pelo usuário sobre o preço de compra de um produto.

// Instruções
// Escreva um algoritmo em Dart que receba um percentual de desconto e o preço de um produto.
// Calcule esse desconto sobre o preço de compra do produto (um bem, um objeto).
// Apresentando o valor do desconto e o novo preço do produto.
// Casos de Testes
// Entrada:
//   10 (ex: desconto)
//   500.00 (ex: Monitor)

// Saída:
//   Preço do produto: R$ 500.0
//   Desconto de 10%: R$ 50.0
//   Preço do produto com desconto: R$ 450.0
// Entrada:
//   5 (ex: desconto)
//   500.00 (ex: Monitor)

// Saída:
//   Preço do produto: R$ 500.0
//   Desconto de 5%: R$ 25.0
//   Preço do produto com desconto: R$ 475.0
// Entrada:
//   23 (ex: desconto)
//   500.00 (ex: Monitor)

// Saída:
//   Preço do produto: R$ 500.0
//   Desconto de 23%: R$ 115.0
//   Preço do produto com desconto: R$ 385.0

void main() {
  // 1. Declaração de variáveis
  num precoProduto, percentualDesconto;

  // 2. Atribuição de valores (ENTRADA)
  precoProduto = 500;
  percentualDesconto = 23;

  // 3. Validações e Cálculos (PROCESSAMENTO)
  num valorDesconto = precoProduto / 100 * percentualDesconto;
  num novoPreco = precoProduto - valorDesconto;

  // 4. Mostra o resultado (SAÍDA)
  print("Preço do produto: R\$ ${precoProduto.toStringAsFixed(2)}");
  print("Desconto de $percentualDesconto%: R\$ ${valorDesconto.toStringAsFixed(2)}");
  print("Preço do produto com desconto: R\$ ${novoPreco.toStringAsFixed(2)}");
}
