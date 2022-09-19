// Você foi convidado por um amigo a resolver um problema de um programa que ele não consegue entender o que está dando errado. Esse programa calcula a distancia entre dois pontos num plano e exibe uma classificação. Encontre os problemas para que o programa volte a funcionar, exibindo a resposta correta.

// Input Format

// Dois pontos no plano (x1, y1), (x2, y2)

// Constraints

// -

// Output Format

// Longe ou Perto

// Sample Input 0

// 1 1 2 3
// Sample Output 0

// Perto

/// Test Cases
///
/// 1 2 1 7 -> Longe
/// 1 1 2 3 -> Perto

import 'dart:io';
import 'dart:math';

void main() {
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split('');

  final x1 = int.parse(inputs[0]);
  final y1 = int.parse(inputs[1]);
  final x2 = int.parse(inputs[2]);
  final y2 = int.parse(inputs[3]);

  double distancia;
  String classificacao;

  distancia = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));

  if (distancia > 4) {
    classificacao = 'Longe';
  } else {
    classificacao = 'Perto';
  }

  print(classificacao);
}
