// Objetivo
// Verificar se a pessoa pode dirigir.

// Instruções
// Escreva um algoritmo em Dart que receba o nome e a data de nascimento de uma pessoa (dia, mês e ano).
// Crie uma function para calcular a idade atual.
// Se a idade for maior ou igual a 18 anos, mostre "Pode dirigir!".
// Senão, mostre "Não pode dirigir".
// Casos de Testes
// Entrada:
// 	nome: Cristiane
// 	dia: 2
// 	mês: 10
// 	ano: 1998

// Saída:
// 	Nome: Cristiane
// 	Idade: 23
// 	Pode dirigir!
// Entrada:
// 	nome: Gabriel
// 	dia: 30
// 	mês: 12
// 	ano: 2018

// Saída:
// 	Nome: Gabriel
// 	Idade: 3
// 	Não pode dirigir
// Entrada:
// 	nome: Miguel
// 	dia: 1
// 	mês: 2
// 	ano: 2003

// Saída:
// 	Nome: Miguel
// 	Idade: 18
// 	Pode dirigir!

void main() {
  String nome;
  int dia, mes, ano, idade;

  nome = "Miguel";
  dia = 1;
  mes = 2;
  ano = 2003;

  idade = calcularIdade(dia, mes, ano);

  print("Nome: $nome");
  print("Idade: $idade");

  if (idade >= 18) {
    print("Pode dirigir!");
  
  } else {
    print("Não pode dirigir");
  }
}

void mostrar(String mensagem) {
  print(mensagem);
}

int calcularIdade(int diaNascimento, int mesNascimento, int anoNascimento) {
  DateTime dataAtual = DateTime.now();

  if (dataAtual.year > anoNascimento) {
    if (dataAtual.month >= mesNascimento) {
      if (dataAtual.day >= diaNascimento) {
        return dataAtual.year - anoNascimento;
      } else {
        return dataAtual.year - anoNascimento - 1;
      }
    } else {
      return dataAtual.year - anoNascimento - 1;
    }
  } else {
    mostrar("Data de nascimento deve ser menor que a data atual");
  }

  return 0;
}