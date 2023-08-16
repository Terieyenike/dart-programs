import 'dart:io';

void main() {
  try {
    stdout.write("Enter the total bill amount: \$");
    var totalBill = double.parse(stdin.readLineSync()!);

    stdout.write("Enter the tip percentage (e.g., 15, 20, etc.): ");
    var tipPercentage = double.parse(stdin.readLineSync()!);

    var tipAmount = totalBill * (tipPercentage / 100);
    var totalAmount = totalBill + tipAmount;

    print("Tip amount: \$$tipAmount");
    print("Total amount (including tip): \$$totalAmount");
  } catch (e) {
    print("Invalid input. Please enter valid numeric values for bill amount and tip percentage.");
  }
}
