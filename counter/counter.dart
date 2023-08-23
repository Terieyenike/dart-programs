import 'dart:io';

void main() {
  var counter = 0;

  while (true) {
    stdout.write('Press enter to increment the counter, or X to exit: ');
    final input = stdin.readLineSync();

    if (input?.toLowerCase() == 'x') {
      break;
    }
    counter++;
    print('Counter: $counter');
  }
  print('Exiting the loop. Final counter value: $counter');
}
