import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

main() {
  bool trab = true;
  String resposta;
  while (trab) {
    print("\n \nDigite um comando:\ncadastrar, listar ou sair.");
    resposta = stdin.readLineSync();
    if (resposta == "cadastrar") {
      trabalho();
    } else if (resposta == "sair") {
      trab = false;
      print(cadastros);
    } else if (resposta == "listar") {
      print(cadastros);
    } else {
      print("Opcao invalida\n");
    }
  }
}

trabalho() {
  Map<String, dynamic> cadastro = {};
  print("Informe seu nome: ");
  cadastro["nome"] = stdin.readLineSync();

  print("Informe sua idade: ");
  cadastro["idade"] = int.parse(stdin.readLineSync());

  print("Informe seu estado: ");
  cadastro["endereco"] = stdin.readLineSync();
  cadastros.add(cadastro);
}
