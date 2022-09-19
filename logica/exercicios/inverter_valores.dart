// Objetivo
// Inverter os valores guardados nas variáveis.

// Instruções
// Escreva um algoritmo em Dart que receba 2 valores inteiros.
// Inverta os valores informados.
// Mostre na tela os valores invertidos.
// Ex: valorA passa a ter o conteúdo de valorB e valorB passa a ter o conteúdo de valorA.

// Casos de Testes
// Entrada:
//   valorA recebe 3
//   valorB recebe 5

// Saída:
//   Valores originais:
//     - Valor A: 3
//     - Valor B: 5
  
//   Valores invertidos:
//     - Valor A: 5
//     - Valor B: 3

void main() {
  // 1. Declaração de variáveis
  int valorA, valorB, valorAuxiliar;

  // 2. Atribuição de valores (ENTRADA)
  valorA = 3;
  valorB = 5;

  // 3. Validações e Cálculos (PROCESSAMENTO)
  print("Valores originais:");
  print("Valor A: $valorA");
  print("Valor B: $valorB");

  valorAuxiliar = valorA;
  valorA = valorB;
  valorB = valorAuxiliar;

  // 4. Mostra o resultado (SAÍDA)
  print("Valores invertidos:");
  print("Valor A: $valorA");
  print("Valor B: $valorB");
}