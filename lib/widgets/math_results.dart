import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MathResults extends StatelessWidget {
  final controller = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            SubResult(text: controller.firstNumber.value),
            SubResult(text: controller.operation.value),
            SubResult(text: controller.secondNumber.value),
            LineSeparator(),
            MainResultText(text: controller.mathResult.value),
          ],
        ));
  }
}
