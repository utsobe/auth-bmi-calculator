import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  final image = 'assets/images/logo.png';

  final name = TextEditingController();
  final email = TextEditingController();
  final age = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    name.text = 'Zainudin Zohari';
    email.text = 'zzj2004@gmail.com';
    age.text = '62';
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
}
