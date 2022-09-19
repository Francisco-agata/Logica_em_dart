// Os caixas de autoatendimento de um banco precisam ser muito eficientes para o melhor uso das cédulas de dinheiro. Você foi convidado para criar um algoritmo para utilizar o menor número possível de cédulas de 100, 50, 20, 10, 5 e 2. Dado que o usuário deseja fazer um saque de um valor inteiro (0 centavos), nosso programa precisa emitir quantas notas serão necessárias de cada cédula.

// Dica: Prestem atenção em valores terminados com 1 e 3, já que nosso caixa não possui cédulas de 1. Uma das formas de resolver esse problema é verificando o resto da divisão por 5.

// Input Format

// Um número inteiro maior que 5.

// Constraints

// -

// Output Format

// Utilize o de para unir a quantidade com o valor da cédula, por exemplo: 3 de 100, 1 de 50, 1 de 5 No exemplo acima, não exibir 0 de 20 ou 0 de 10.

// Sample Input 0

// 355
// Sample Output 0

// 3 de 100, 1 de 50, 1 de 5

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