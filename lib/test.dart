// top-level function
import 'dart:io';

import 'dart:math';

void main(){
  var check = true;
  var r = Random();
  var guesscount = 0;
  var answer = r.nextInt(100);

  while(check){
    stdout.write('Please guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == answer) {
      guesscount++;
      print('$guess is CORRECT ✔, Total guesses: $guesscount');
      break;
    } else {
      if (guess == null) {
        continue;
      } else {
        if (guess > answer) {
          print("$guess is TOO HIGH! ▲");
        } else {
          print("$guess is TOO LOW! ▼");
        }
      }
    }
    guesscount++;
  } print('END OF PROGRAM');
}