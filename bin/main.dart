import 'dart:math';
import 'dart:io';

void main() {
  Random random = Random();
  int randomNum = random.nextInt(100) + 1;
  int guess = 0;

  int maxAttempts = 9;
  int attempts = 0;

  do {
    stdout.write("Tebak angka antara 1 dan 100 (sisa ${maxAttempts - attempts} kesempatan) : ");
    String? input = stdin.readLineSync();
    guess = int.tryParse(input ?? "") ?? 0;

    attempts++;

    if (guess > randomNum) {
      print("Terlalu besar!\n");
    } else if (guess < randomNum) {
      print("Terlalu kecil!\n");
    } else {
      print("Tebakan benar! Kamu menebak dalam $attempts percobaan!");
      break;
    }

    if (attempts >= maxAttempts && guess != randomNum) {
      print("Maaf kesempatan habis! Angka yang benar adalah $randomNum");
      break;
    }

  } while (guess != randomNum);
}