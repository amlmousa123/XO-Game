import 'dart:io';

import 'xo_shap.dart';
import 'package:collection/collection.dart';

class XoGame {
  List<Set<String>> winningList = [
    {'t1', 't2', 't3'},
    {'m1', 'm2', 'm3'},
    {'b1', 'b2', 'b3'},
    {'t1', 'm1', 'b1'},
    {'t2', 'm2', 'b2'},
    {'t3', 'm3', 'b3'},
    {'t1', 'm2', 'b3'},
    {'t3', 'm2', 'b1'}
  ];

  List<String> inputsList = [
    't1',
    't2',
    't3',
    'm1',
    'm2',
    'm3',
    'b1',
    'b2',
    'b3'
  ];

  Set<String> player1Inputs = {};
  Set<String> player2Inputs = {};

  void play(XOBoxShap shap) {
    shap = XOBoxShap(
      t1: '  ',
      t2: '  ',
      t3: '  ',
      m1: '  ',
      m2: '  ',
      m3: '  ',
      b1: '  ',
      b2: '  ',
      b3: '  ',
    );
    first:
    for (int i = 0; i < 9; i++) {
      if (i % 2 == 0) {
        stdout.write('player1>>>>> ');
        String player1Input = stdin.readLineSync()!;
        if (player1Input == 'q') {
          print('Game Exit');
          break first;
        }
        draw(player1Input, 'X ', shap);
        player1Inputs.add(player1Input);
        if (player1Inputs.length >= 3) {
          for (Set element in winningList) {
            if (SetEquality()
                .equals(player1Inputs.intersection(element), element)) {
              print('Player1 is the winner');
              break first;
            } else {
              continue;
            }
          }
        }
      } else {
        stdout.write('player2>>>>> ');
        String player2Input = stdin.readLineSync()!;
        if (player2Input == 'q') {
          print('Game Exit');
          break first;
        }
        draw(player2Input, 'O ', shap);
        player2Inputs.add(player2Input);
        if (player2Inputs.length >= 3) {
          for (Set element in winningList) {
            if (SetEquality()
                .equals(player2Inputs.intersection(element), element)) {
              print('Player2 is the winner');
              break first;
            } else {
              continue;
            }
          }
        }
      }
    }
  }

  void draw(String position, String xo, XOBoxShap shap) {
    if (!inputsList.contains(position)) {
      print('your position is wrong please enter position again');
      String anthorPosition = stdin.readLineSync()!;
      draw(anthorPosition, xo, shap);
    }
    switch (position) {
      case 't1':
        shap.t1 = xo;
        shap.drawXOBoxShap();
        break;
      case 't2':
        shap.t2 = xo;
        shap.drawXOBoxShap();
        break;
      case 't3':
        shap.t3 = xo;
        shap.drawXOBoxShap();
        break;
      case 'm1':
        shap.m1 = xo;
        shap.drawXOBoxShap();
        break;
      case 'm2':
        shap.m2 = xo;
        shap.drawXOBoxShap();
        break;
      case 'm3':
        shap.m3 = xo;
        shap.drawXOBoxShap();
        break;
      case 'b1':
        shap.b1 = xo;
        shap.drawXOBoxShap();
        break;
      case 'b2':
        shap.b2 = xo;
        shap.drawXOBoxShap();
        break;
      case 'b3':
        shap.b3 = xo;
        shap.drawXOBoxShap();
        break;
    }
  }
}
