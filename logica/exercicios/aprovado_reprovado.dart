// Objetivo
// Calcular a média das notas de um estudante e verificar se está aprovado ou reprovado, usando como base, a média 6.

// Instruções
// Escreva um algoritmo em Dart que receba 4 notas de um estudante.
// Calcule a média das notas.
// Verifique o valor da média das notas
// Se a média for maior ou igual a 6, escreva "Aprovado", senão escreva "Reprovado".
// Mostre na tela, a média e se está aprovado.
// Casos de Testes
// Entrada:
//   nota 1: 7
//   nota 2: 6.3
//   nota 3: 8
//   nota 4: 5.5

// Saída:
//   Média: 6.7
//   Aprovado!

void main() {
  num nota1, nota2, nota3, nota4, media;
  String resultado = "Aprovado!";

  nota1 = 7;
  nota2 = 6.3;
  nota3 = 8;
  nota4 = 5.5;

  media = (nota1 + nota2 + nota3 + nota4) / 4;
  if (media < 6) resultado = "Reprovado";

  print("Média: $media");
  print(resultado);
}
