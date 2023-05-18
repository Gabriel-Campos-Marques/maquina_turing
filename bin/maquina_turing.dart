import 'dart:math';

class Turing {
  String estadoAtual = '0';
  String estadoLido = '0';
  String estadoTransformado = '0';
  String proximoEstado = '0';
  String deslocamento = '0';

  Turing({
    estadoAtual,
    estadoLido,
    estadoTransformado,
    proximoEstado,
    deslocamento,
  });

  // void CriaQuintupla(
  //   String estadoAtual,
  //   String estadoLido,
  //   String estadoTransformado,
  //   String proximoEstado,
  //   String deslocamento,
  // )
}

void main() {
  List<String> fita = [];
  List<String> quintupla = [];
  String estado = 'q0';

  while (fita.length <= 100) {
    fita.add(Random().nextInt(2).toString());
  }
  print(fita);

  int nContador = 0;
  while (quintupla.length <= 30) {
    if ((estado == 'q0') && (fita[nContador] == '0')) {
      quintupla.add('[q0, 0, 1, q0, D]');
      fita[nContador] = '1';
      nContador++;
      continue;
    }

    if ((estado == 'q0') && (fita[nContador] == '1')) {
      quintupla.add('[q0, 1, 0, q0, D]');
      fita[nContador] = '0';
      nContador++;
      continue;
    }

    if ((estado == 'q0') && (fita[nContador] == '2')) {
      quintupla.add('[q0, 2, 1, q1, E]');
      estado = 'q1';
      fita[nContador] = '1';
      nContador++;
      continue;
    }

    if ((estado == 'q1') && (fita[nContador] == '0')) {
      quintupla.add('[q1, 0, 1, q1, D]');
      fita[nContador] = '1';
      nContador++;
      continue;
    }

    if ((estado == 'q1') && (fita[nContador] == '1')) {
      quintupla.add('[q1, 1, 0, q1, D]');
      fita[nContador] = '0';
      nContador++;
      continue;
    }

    if ((estado == 'q1') && (fita[nContador] == '2')) {
      quintupla.add('[q1, 2, 1, q2, E]');
      fita[nContador] = '1';
      estado = 'q2';
      nContador++;
      continue;
    }

    if ((estado == 'q2') && (fita[nContador] == '0')) {
      quintupla.add('[q2, 0, 1, q2, D]');
      fita[nContador] = '1';
      nContador++;
      continue;
    }

    if ((estado == 'q2') && (fita[nContador] == '1')) {
      quintupla.add('[q2, 1, 0, q2, D]');
      fita[nContador] = '0';
      nContador++;
      continue;
    }

    if ((estado == 'q2') && (fita[nContador] == '2')) {
      quintupla.add('[q2, 2, 1, qf, D]');
      fita[nContador] = '1';
      print('Fim da fita');
      break;
    }
  }
  for (int i = 0; i < quintupla.length; i++) {
    print(quintupla[i]);
  }

  print(fita);
}
