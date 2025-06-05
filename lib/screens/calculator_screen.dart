import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/math_results.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/widgets/calc_button.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  final controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            MathResults(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: 'AC',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => controller.resetAll(),
                ),
                CalculatorButton(
                  text: '+/-',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => controller.changeNegativePositive(),
                ),
                CalculatorButton(
                  text: 'del',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => controller.deleteLastNumber(),
                ),
                CalculatorButton(
                  text: '/',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => controller.selectOperation('/'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '7',
                  onPressed: () => controller.addNumber('7'),
                ),
                CalculatorButton(
                  text: '8',
                  onPressed: () => controller.addNumber('8'),
                ),
                CalculatorButton(
                  text: '9',
                  onPressed: () => controller.addNumber('9'),
                ),
                CalculatorButton(
                  text: 'X',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => controller.selectOperation('X'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '4',
                  onPressed: () => controller.addNumber('4'),
                ),
                CalculatorButton(
                  text: '5',
                  onPressed: () => controller.addNumber('5'),
                ),
                CalculatorButton(
                  text: '6',
                  onPressed: () => controller.addNumber('6'),
                ),
                CalculatorButton(
                  text: '-',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => controller.selectOperation('-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '1',
                  onPressed: () => controller.addNumber('1'),
                ),
                CalculatorButton(
                  text: '2',
                  onPressed: () => controller.addNumber('2'),
                ),
                CalculatorButton(
                  text: '3',
                  onPressed: () => controller.addNumber('3'),
                ),
                CalculatorButton(
                  text: '+',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => controller.selectOperation('+'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '0',
                  big: true,
                  onPressed: () => controller.addNumber('0'),
                ),
                CalculatorButton(
                  text: '.',
                  onPressed: () => controller.addDecimalPoint(),
                ),
                CalculatorButton(
                  text: '=',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => controller.calculateResult(),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
