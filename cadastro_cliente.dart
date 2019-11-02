import 'dart:io';

Map<String, dynamic> cadastro = {};

main() {
  bool trab = true;
  String resposta;
  while (trab) {
    print("\n \n \ncadastrar, listar ou sair?");
    resposta = stdin.readLineSync();
    if (resposta == "cadastrar") {
      trabalho();
    } else if (resposta == "sair") {
      trab = false;
    } else if (resposta == "listar") {
      print(cadastro);
    } else {
      print("Opcao invalida\n");
    }
  }
}

trabalho() {
  print("Informe seu nome: ");
  cadastro["nome"] = stdin.readLineSync();

  print("Informe sua idade: ");
  cadastro["idade"] = int.parse(stdin.readLineSync());

  print("Informe seu estado: ");
  cadastro["endereco"] = stdin.readLineSync();
}
