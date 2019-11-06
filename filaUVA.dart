List<Map<String, dynamic>> ffila = [
  {"cliente": 1, "intervalo": 10},
  {"cliente": 2, "intervalo": 2},
  {"cliente": 3, "intervalo": 13},
  {"cliente": 4, "intervalo": 7},
  {"cliente": 5, "intervalo": 2},
  {"cliente": 6, "intervalo": 8},
  {"cliente": 7, "intervalo": 8},
  {"cliente": 8, "intervalo": 8},
  {"cliente": 9, "intervalo": 10},
  {"cliente": 10, "intervalo": 9},
  {"cliente": 11, "intervalo": 1},
  {"cliente": 12, "intervalo": 14},
  {"cliente": 13, "intervalo": 14},
  {"cliente": 14, "intervalo": 1},
  {"cliente": 15, "intervalo": 10},
  {"cliente": 16, "intervalo": 9},
  {"cliente": 17, "intervalo": 9},
  {"cliente": 18, "intervalo": 9},
  {"cliente": 19, "intervalo": 8},
  {"cliente": 20, "intervalo": 14},
]; //primeira fila
List<Map<String, int>> sfila = [
  {"cliente": 1, "duracao": 5},
  {"cliente": 2, "duracao": 5},
  {"cliente": 3, "duracao": 3},
  {"cliente": 4, "duracao": 3},
  {"cliente": 5, "duracao": 6},
  {"cliente": 6, "duracao": 7},
  {"cliente": 7, "duracao": 6},
  {"cliente": 8, "duracao": 8},
  {"cliente": 9, "duracao": 2},
  {"cliente": 10, "duracao": 5},
  {"cliente": 11, "duracao": 8},
  {"cliente": 12, "duracao": 8},
  {"cliente": 13, "duracao": 8},
  {"cliente": 14, "duracao": 3},
  {"cliente": 15, "duracao": 4},
  {"cliente": 16, "duracao": 3},
  {"cliente": 17, "duracao": 3},
  {"cliente": 18, "duracao": 4},
  {"cliente": 19, "duracao": 5},
  {"cliente": 20, "duracao": 5},
]; //segunda fila

main() {
  double lambda;
  double iC;
  double mi;
  double tA;
  double tF;

  lambda = intervalo();
  mi = atendimento();
  iC = 1 / lambda; //          Tempo de fila / tempo total
  tA = mi / sfila.length; //   duracao / nº navios
  tF = tA / iC;

  print("O intervalo médio de chegadas é: $lambda Horas por navio.");
  print("A duração média da carga é de $mi horas por navio.");
  print("Tamanho médio da fila: $iC horas por $tA cliente ");
  print("Tempo médio de espera na fila: $tF Horas.");
}

double intervalo() {
  int result = 0;
  for (int i = 0; i < ffila.length; i++) {
    result += ffila[i]['intervalo'];
  }
  return result / ffila.length;
}

double atendimento() {
  int result = 0;
  for (int i = 0; i < ffila.length; i++) {
    result += sfila[i]['duracao'];
  }
  return result / sfila.length;
}
