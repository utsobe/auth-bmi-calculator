import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import '../controllers/calculate_controller.dart';

class CalculateView extends GetView<CalculateController> {
  const CalculateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BMI Calculator',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 2, color: Colors.grey.shade300)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            LineIcon(
                              LineIcons.female,
                              size: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 2, color: Colors.grey.shade300)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            LineIcon(
                              LineIcons.male,
                              size: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 150,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2, color: Colors.grey.shade300)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LineIcon(
                      LineIcons.male,
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Male',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
