// O Tesla Model X é um carro autônomo que consegue dirigir sozinho. Para evitar acidentes, o carro deve ser capaz de calcular qual a distância que ele percorrerá, ao iniciar o processo de frenagem, até parar.

// Você acabou de ser contratado(a) como desenvolver(a) de software na Tesla. Sua primeira tarefa é fazer um programa capaz de calcular essa distância.

// Seu programa sempre receberá como entrada a a velocidade e a aceleração e deverá imprimir na tela a distância percorrida pelo carro até parar.

// Input Format

// A entrada será sempre composta por dois números inteiros: a velocidade e a aceleração.

// Output Format

// A saída deverá ser sempre um número representando a distância percorrida pelo carro ao longo da frenagem.

// Sample Input 0

// 20 -2
// Sample Output 0

// 100.0



/// Test Cases:
/// 
/// 20 -2 -> 100.0
/// 40 -1 -> 800.0
/// 120 -30 -> 240.0
/// 80 -10 -> 320.0
/// 9 -3 -> 13.5
/// 60 -15 -> 120.0
/// 40 -5 -> 160.0
/// 78 -32 -> 95.0625

import 'dart:io';

void main(List<String> arguments) {

  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  final velocidade = int.parse(inputs[0]);
  final aceleracao = int.parse(inputs[1]);
  
  final distancia = (-(velocidade * velocidade) / (2 * aceleracao));
  print(distancia);
}