import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiResultController extends GetxController {
  //TODO: Implement BmiResultController

  final arg = Get.arguments;

  final count = 0.obs;
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

  void increment() => count.value++;

  Color getBMIColor({required String bmiTitle}) {
    switch (bmiTitle) {
      case 'Overweight':
        return Colors.red;
      case 'Normal':
        return Colors.green;
      case 'Underweight':
        return Colors.orange;
      default:
        return Colors.green;
    }
  }
}
