import 'dart:math';
import 'dart:io';

void main() {
  Random random = Random();
  int randomNum = random.nextInt(100) + 1;
  int guess = 0;

  do {
    stdout.write("Tebak angka antara 1 dan 100 : ");
    String? input = stdin.readLineSync();
    guess = int.parse(input ?? "0");

    if (guess > randomNum) {
      print("Terlalu besar!\n");
    } else if (guess < randomNum) {
      print("Terlalu kecil!\n");
    } else {
      print("Tebakan benar!");
    }
  } while (guess != randomNum);
}