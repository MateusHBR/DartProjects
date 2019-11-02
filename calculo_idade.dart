import 'dart:io';

main() {
  print("Informe sua idade: ");
  var idade = int.parse(stdin.readLineSync());

  if (idade > 17) {
    print("É maior de idade!");
  } else {
    print("É menor de idade!");
  }
}
