// Objetivo
// Calcular a média das notas de um estudante.

// Instruções
// Escreva um algoritmo em Dart que receba 3 notas de um estudante.
// Calcule a média das notas.
// Mostre na tela.
// Casos de Testes
// Entrada:
//   nota 1: 7
//   nota 2: 6.3
//   nota 3: 8

// Saída:
//   Média: 7.1

void main() {
  num nota1, nota2, nota3, media;

  nota1 = 7;
  nota2 = 6.3;
  nota3 = 8;

  media = (nota1 + nota2 + nota3) / 3;

  print("Média: ${media.toStringAsFixed(1)}");
}