import 'package:get/get.dart';

class CalculatorController extends GetxController {
  RxString firstNumber = '10'.obs;
  RxString secondNumber = '20'.obs;
  RxString mathResult = '30'.obs;
  RxString operation = '+'.obs;

  resetAll() {
    firstNumber.value = '0';
    secondNumber.value = '0';
    mathResult.value = '0';
    operation.value = '+';
  }

  addNumber(String number) {
    if (mathResult.value == '0') return mathResult.value = number;
    if (mathResult.value.length == '-0') return mathResult.value = '-' + number;
    mathResult.value += number;
  }

  changeNegativePositive() {
    if (mathResult.startsWith('-')) {
      mathResult.value = mathResult.value.replaceFirst('-', '');
    } else {
      mathResult.value = '-' + mathResult.value;
    }
  }

  addDecimalPoint() {
    if (mathResult.contains('.')) return;
    if (mathResult.startsWith('0')) return mathResult.value = '0.';
    mathResult.value += '.';
  }

  selectOperation(String operation) {
    this.operation.value = operation;
    firstNumber.value = mathResult.value;
    mathResult.value = '0';
  }

  deleteLastNumber() {
    if (mathResult.value.replaceAll('-', '').length > 1) {
      mathResult.value = mathResult.value.substring(0, mathResult.value.length - 1);
    } else {
      mathResult.value = '0';
    }
  }

  calculateResult() {
    double num1 = double.parse(firstNumber.value);
    double num2 = double.parse(mathResult.value);
    secondNumber.value = mathResult.value;

    switch (operation.value) {
      case '+':
        mathResult.value = (num1 + num2).toString();
        break;
      case '-':
        mathResult.value = (num1 - num2).toString();
        break;
      case 'X':
        mathResult.value = (num1 * num2).toString();
        break;
      case '/':
        mathResult.value = (num1 / num2).toString();
        break;
      default:
        return;
    }
    if (mathResult.value.endsWith('.0'))
      return mathResult.value = mathResult.value.substring(0, mathResult.value.length - 2);
  }
}
