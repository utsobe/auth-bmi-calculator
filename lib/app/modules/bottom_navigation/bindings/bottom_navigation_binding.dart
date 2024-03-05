import 'package:bmi_calculator/app/modules/calculate/controllers/calculate_controller.dart';
import 'package:get/get.dart';

import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationController>(
      () => BottomNavigationController(),
    );
    Get.lazyPut<CalculateController>(
      () => CalculateController(),
    );
  }
}
