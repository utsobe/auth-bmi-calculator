import 'dart:math';

import 'package:bmi_calculator/app/routes/app_pages.dart';
import 'package:get/get.dart';

class CalculateController extends GetxController {
  //TODO: Implement CalculateController
  final gender = ''.obs;
  final height = 180.obs;
  final weight = 70.obs;
  final age = 21.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void calculateBmi() {
    final bmi = (weight / pow(height / 100, 2));
    final bmiTitle = getResultTitle(bmiResult: bmi);
    final interpretation = getInterpretation(bmiResult: bmi);
    print('gender: ${gender.value}');
    print('height: ${height.value}');
    print('weight: ${weight.value}');
    print('age: ${age.value}');
    print('Result: ${bmi.toStringAsFixed(1)}');
    Get.toNamed(Routes.BMI_RESULT, arguments: {
      'bmi': bmi.toStringAsFixed(1),
      'bmiTitle': bmiTitle,
      'interpretation': interpretation,
    });
  }

  String? getResultTitle({required double bmiResult}) {
    if (bmiResult >= 25) {
      return 'Overweight';
    } else if (bmiResult > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String? getInterpretation({required double bmiResult}) {
    if (bmiResult >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmiResult > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
