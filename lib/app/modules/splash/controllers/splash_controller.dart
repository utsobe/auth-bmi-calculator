import 'package:bmi_calculator/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
  final image = 'assets/images/logo.png';

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(2.seconds, () {
      Get.offNamed(Routes.LOGIN);
    });
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
}
