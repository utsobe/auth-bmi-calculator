import 'package:bmi_calculator/app/core/widgets/common_buttons/common_button.dart';
import 'package:bmi_calculator/app/core/widgets/custom_container/custom_container.dart';
import 'package:bmi_calculator/app/data/constants/extensions/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/text_widgets/poppins_text.dart';
import '../../../data/constants/size_constant.dart';
import '../controllers/bmi_result_controller.dart';

class BmiResultView extends GetView<BmiResultController> {
  const BmiResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(SizeConst.getSize(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PoppinsText(
                title: 'Your Result',
                size: SizeConst.getSize(26),
                weight: FontWeight.bold,
              ),
              (SizeConst.getSize(20)).height,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 5,
                      child: CustomContainer(
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            PoppinsText(
                              title: controller.arg['bmiTitle'],
                              color: controller.getBMIColor(
                                  bmiTitle: controller.arg['bmiTitle']),
                              size: SizeConst.getSize(22),
                              weight: FontWeight.bold,
                            ),
                            PoppinsText(
                              title: controller.arg['bmi'].toString(),
                              size: SizeConst.getSize(100),
                              weight: FontWeight.bold,
                            ),
                            PoppinsText(
                              title: controller.arg['interpretation'],
                              align: TextAlign.center,
                              size: SizeConst.getSize(22),
                            ),
                          ],
                        ),
                        onPress: () {},
                      ),
                    ),
                  ],
                ),
              ),
              (SizeConst.getSize(20)).height,
              CommonButton(
                  title: 'Re-Calculate',
                  callBack: () {
                    Get.back();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
