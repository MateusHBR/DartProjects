import 'dart:io';

Map<String, dynamic> cadastro = {};

main() {
  trabalho();
}

trabalho() {
  print("Informe seu nome: ");
  cadastro["nome"] = stdin.readLineSync();

  print("Informe sua idade: ");
  cadastro["idade"] = int.parse(stdin.readLineSync());

  print("Informe seu estado: ");
}
