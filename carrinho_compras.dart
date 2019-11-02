import 'dart:io';

main() {
  List<String> carrinho = [];
  compra(carrinho);
  listar(carrinho);
}

compra(List<String> carrinho) {
  String produto;
  bool emCompras = true;

  while (emCompras) {
    print("\nAdicione um produto ao carrinho");
    produto = stdin.readLineSync();

    if (produto == "sair") {
      emCompras = false;
      print("\n\n\n");
    } else if (produto == "remover") {
      remover(carrinho);
    } else if (produto == "listar") {
      listar(carrinho);
    } else {
      carrinho.add(produto);
    }
  }
}

remover(List<String> carrinho) {
  listar(carrinho);
  print("Informe código do item que deseja remover ");
  int c = int.parse(stdin.readLineSync());
  c -= 1;
  carrinho.removeAt(c);
}

listar(List<String> carrinho) {
  for (int i = 0; i < carrinho.length; i++) {
    print(" Item:${i + 1} Produto: ${carrinho[i]}");
  }
}
