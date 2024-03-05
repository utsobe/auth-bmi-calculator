import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  final image = 'assets/images/logo.png';

  final email = TextEditingController();
  final password = TextEditingController();
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
}
