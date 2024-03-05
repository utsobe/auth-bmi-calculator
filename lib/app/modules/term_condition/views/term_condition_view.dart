import 'package:bmi_calculator/app/data/constants/extensions/double_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/widgets/text_widgets/poppins_text.dart';
import '../../../data/constants/size_constant.dart';
import '../controllers/term_condition_controller.dart';

class TermConditionView extends GetView<TermConditionController> {
  const TermConditionView({Key? key}) : super(key: key);
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
                title: 'Terms & Condition',
                size: SizeConst.getSize(26),
                weight: FontWeight.bold,
              ),
              (SizeConst.getSize(20)).height,
              Container(
                padding: EdgeInsets.all(SizeConst.getSize(20)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    PoppinsText(
                        title:
                            'Welcome to our BMI calculator service. This tool is designed for informational purposes and should not be considered a substitute for professional medical advice, diagnosis, or treatment. We diligently strive to maintain accurate and up-to-date information; however, we make no warranties or representations regarding the completeness, reliability, or suitability of the BMI calculator or the information provided. Users acknowledge their responsibility for health decisions and are strongly encouraged to consult with qualified healthcare professionals for individualized guidance. Any personal health data collected is handled with the utmost confidentiality as outlined in our Privacy Policy. We reserve the right to update these terms at any time without notice, and users are advised to regularly review this information. By utilizing the BMI calculator, users accept these terms and conditions, and we disclaim any liability for loss or damage resulting from its use.')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
