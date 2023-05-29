import 'dart:io';

import 'xo_game.dart';
import 'xo_shap.dart';

void main() {
  print('**** Welcome to TICTACTOE Game ****');
  XOBoxShap startShap = XOBoxShap(
    t1: 'T1',
    t2: 'T2',
    t3: 'T3',
    m1: 'M1',
    m2: 'M2',
    m3: 'M3',
    b1: 'B1',
    b2: 'B2',
    b3: 'B3',
  );
  startShap.drawXOBoxShap();
  stdout.write('Do you wanna play ? y/n >> ');
  String answer = stdin.readLineSync()!;
  startGame(answer);

  XoGame game = XoGame();
  game.play(startShap);
}

void startGame(String input) {
  if (input == 'y') {
    print('''
let\'s start the game!
Player1 : O     Player2 : X
write a position
 ''');
  } else if (input == 'n') {
    print('Game Exit');
  } else {
    print('wrong choice ,please enter y or n');
    String anthorInput = stdin.readLineSync()!;
    startGame(anthorInput);
  }
}
