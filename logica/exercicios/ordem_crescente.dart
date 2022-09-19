// Uma vez que 3 números sejam adicionados ao seu programa, nós precisamos fazer a ordenação em ordem decrescente.

// Caso algum número repetido seja adicionado, o programa deve exibir a mensagem de erro "Entre apenas numeros diferentes".

// Input Format

// 3 números inteiros

// Constraints

// -

// Output Format

// Se for possível ordenar: 4 2 1 Caso não: Entre apenas numeros diferentes

// Sample Input 0

// 5 3 9
// Sample Output 0

// 9 5 3

/// Test Cases
///
/// 5 3 9 -> 9 5 3
/// 1 7 12 -> 12 7 1
/// 2 19 3 -> 19 3 2
/// 2 4 1 -> 4 2 1
/// 10 6 2 -> 10 6 2
/// 9 5 7 -> 9 7 5
/// 2 2 2 -> Entre apenas numeros diferentes
import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final num1 = int.parse(inputs[0]);
  final num2 = int.parse(inputs[1]);
  final num3 = int.parse(inputs[2]);

  // Escreva seu programa a partir daqui
  if (num1 == num2 || num1 == num3 || num2 == num3) {
    print('Entre apenas numeros diferentes');
  } else {
    int posicao1;
    int posicao2;
    int posicao3;

    if (num1 > num2) {
      if (num1 > num3) {
        // num1 > num2 && num1 > num3
        posicao1 = num1;
        if (num3 > num2) {
          posicao2 = num3;
          posicao3 = num2;
        } else {
          posicao2 = num2;
          posicao3 = num3;
        }
      } else {
        // num3 > num1 > num2
        posicao1 = num3;
        posicao2 = num1;
        posicao3 = num2;
      }
    } else {
      // num2 > num1
      if (num2 > num3) {
        // num2 > num1 && num2 > num3
        posicao1 = num2;
        if (num3 > num1) {
          posicao2 = num3;
          posicao3 = num1;
        } else {
          posicao2 = num1;
          posicao3 = num3;
        }
      } else {
        // num3 > num2 > num1
        posicao1 = num3;
        posicao2 = num2;
        posicao3 = num1;
      }
    }

    print('$posicao1 $posicao2 $posicao3');
  }
}