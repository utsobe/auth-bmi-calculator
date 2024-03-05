import 'package:bmi_calculator/app/core/services/local_db_services/local_db_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final image = 'assets/images/logo.png';

  final email = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final localDB = Get.find<LocalDBService>();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    email.text = 'zzj2004@gmail.com';
    password.text = '3april1962';
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
