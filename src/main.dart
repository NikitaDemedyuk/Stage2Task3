
import 'dart:io';
import 'dart:math';

void guessNum(int num, int randomNum) {
  if (num == randomNum) {
    stdout.write('\nExactly right!\n');
  } else if ((num - randomNum).abs() <= 20) {
    stdout.write('\nToo high!\n');
  } else {
    stdout.write('\nToo low... :( \n');
  }
}

int main() {
  final randomNum = Random().nextInt(100) + 1;

  stdout.write("\nEnter the number: ");
  int num = int.parse(stdin.readLineSync() ?? '0');

  stdout.write("\nYour number: $num\nRandom num: $randomNum\n");
  guessNum(num, randomNum);
  return 0;
}
