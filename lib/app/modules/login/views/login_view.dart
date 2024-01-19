import 'package:bmi_calculator/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  controller.image,
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(height: 80),
              TextField(
                controller: controller.email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Email',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: controller.email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Password',
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 55,
                width: Get.width,
                child: ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    Get.toNamed(Routes.BOTTOM_NAVIGATION);
                  },
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
