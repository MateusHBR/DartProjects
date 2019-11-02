import 'dart:io';

main() {
  calculo();
}

//funcao de entrada e cálculo
calculo() {
  print("Informe o peso: ");
  double peso = double.parse(stdin.readLineSync());

  print("Informe a altura: ");
  double altura = double.parse(stdin.readLineSync());

  double imc = peso / (altura * altura);
  imprimir(imc, peso, altura);
}

//funcao de saída
imprimir(double imc, double p, double a) {
  if (imc < 18.5) {
    print("Abaixo do peso");
  } else if (imc >= 18.5 && imc <= 24.9) {
    print("Peso normal");
  } else if (imc >= 25 && imc <= 29.9) {
    print("Sobrepeso");
  } else if (imc >= 30 && imc <= 34.9) {
    print("Obesidade grau 1");
  } else if (imc >= 35 && imc <= 39.9) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }
  print("Peso: $p Altura: $a, IMC:$imc");
}
