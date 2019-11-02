import 'dart:io';

main() {
  bool condicao = true;
  var text = [];
  String nome;

  while (condicao) {
    print("Escreva um texto: ");
    nome = stdin.readLineSync();
    if (nome == "sair") {
      condicao = false;
    } else {
      text.add(nome);
    }
  }
  print("\n \n \n");
  for (int i = 0; i < text.length; i++) {
    print(text[i] + "\n");
  }
  print(text);
}
