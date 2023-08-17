import 'dart:io';

void main() {
  try {
    stdout.write("Enter the total bill amount: \$");
    var totalBill = double.parse(stdin.readLineSync()!);

    stdout.write("Enter the tip percentage (e.g., 15, 20, etc.): ");
    var tipPercentage = double.parse(stdin.readLineSync()!);

    stdout.write("How many people to split the bill? ");
    int numberOfSplit = int.parse(stdin.readLineSync()!);

    var billPerPerson = totalBill * (1 + (tipPercentage / 100)) / numberOfSplit;

    var totalAmount = billPerPerson * numberOfSplit;

    print("Each person should pay: \$${billPerPerson.toStringAsFixed(2)}");

    print("Total amount (including tip): \$${totalAmount.toStringAsFixed(2)}");

  } catch (e) {
    print(
        "Invalid input. Please enter valid numeric values for bill amount and tip percentage.");
  } finally {
    print('Done');
  }
}
