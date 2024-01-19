import 'package:bmi_calculator/app/modules/calculate/views/calculate_view.dart';
import 'package:bmi_calculator/app/modules/result/views/result_view.dart';
import 'package:bmi_calculator/app/modules/settings/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  //TODO: Implement BottomNavigationController
  final currentPageIndex = 0.obs;

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

  Widget getCurrentPage() {
    switch (currentPageIndex.value) {
      case 0:
        return const CalculateView();
      case 1:
        return const ResultView();
      case 2:
        return const SettingsView();
      default:
        return const CalculateView();
    }
  }
}
