// Um novo banco abriu em seu estado e liberou a fórmula que ele utiliza para calcular o valor da parcela de um tipo de empréstimo.

// A fórmula precisa de 3 dados, o valor do empréstimo, seu score no Serasa e em quantos meses a pessoa pretende pagar.

// Existem 3 faixas de juros que as pessoas se encaixam dependendo de seu score no Serasa:
// - 1ª faixa (Score menor que 300), juros = 3%;
// - 2ª faixa (Score menor que 700), juros = 9%;
// - 3ª faixa (Score maior ou igual a 700), juros = 15%;

// Um amigo seu viu isso como uma forma de empreender e decidiu criar um aplicativo que calcula o valor da parcela. Para fazer isso ele pediu a sua ajuda.

// Seu programa receberá sempre como entrada os ganhos da pessoa, seu score no Serasa e em quantos meses a pessoa pagará e deverá imprimir na tela o valor da parcela.

// Input Format

// A entrada será sempre três números:

// os ganhos da pessoa
// seu score no Serasa
// em quantos meses a pessoa pagará.
// Output Format

// A saída deverá ser sempre um número representando o valor da parcela.

// Sample Input 0

// 5000 80 10
// Sample Output 0

// 515.0

/// Test Cases
///
/// 5000 80 10 -> 515.0
/// 2500 700 10 -> 287.5
/// 45678 1200 23 -> 2283.9
/// 9000 400 8 -> 1226.25
/// 3200 800 4 -> 920.0
import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final valorEmprestimo = double.parse(inputs[0]);
  final serasaScore = int.parse(inputs[1]);
  final meses = int.parse(inputs[2]);

  // Escreva seu programa a partir daqui
  double juros;
  if (serasaScore < 300) {
    juros = 3 / 100;
  } else if (serasaScore < 700) {
    juros = 9 / 100;
  } else {
    juros = 15 / 100;
  }

  final parcela = (valorEmprestimo + (valorEmprestimo * juros)) / meses;
  print(parcela);
}