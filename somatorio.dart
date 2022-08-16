import 'dart:io';

void main() {
  int somatorio = 0;
  print("Somatório dos Divisíveis por 3 e 5.");
  print("Os valores válidos são todos os números inteiros.");
  stdout.write("Digite seu Número: ");

  try {
    int? num = int.parse(stdin.readLineSync()!);
    somatorio = somatorio_div(num);
    print("Resultado: $somatorio");
  } catch (e) {
    print("Ocorreu um Erro!");
    print("Execute Novamente e Insira um Valor Válido.");
  }
}

int somatorio_div(int num) {
  int num_temp = 0;
  int num_result = 0;

  for (var cont = num - 1; cont != 0; cont--) {
    if ((cont % 3 == 0) | (cont % 5 == 0)) {
      num_temp += cont;
    }
  }
  num_result = num_temp;

  return num_result;
}
