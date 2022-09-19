// Objetivo
// Somar os valores informados.

// Instruções
// Escreva um algoritmo em Dart que receba 2 valores decimais.
// Crie uma function sem parâmetros e sem retorno para calcular a soma dos valores informados.
// Mostre o resultado na tela.
// Casos de Testes
// Entrada:
// 	valor1 = 5.3
// 	valor2 = 4.25

// Saída:
// 	9.55

double valor1 = 0, valor2 = 0;

void main() {
  valor1 = 5.3;
  valor2 = 4.25;

  somarValores();
}

void somarValores() {
  double resultado = valor1 + valor2;
  print(resultado);
}
