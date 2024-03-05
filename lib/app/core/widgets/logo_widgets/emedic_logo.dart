import 'package:bmi_calculator/app/data/constants/extensions/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/constants/color_constant.dart';
import '../../../data/constants/size_constant.dart';
import '../text_widgets/poppins_text.dart';
import '../text_widgets/quicksand_text.dart';

class EMedicLogo extends StatelessWidget {
  final bool? isShorter;

  const EMedicLogo({
    super.key,
    this.isShorter = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuicksandText(
          title: 'e-Medic',
          size: SizeConst.getSize(55),
          color: ColorConstant.primaryColor,
          weight: FontWeight.w500,
        ),
        PoppinsText(
          title: 'Management System'.tr,
          size: SizeConst.getSize(14),
          color: ColorConstant.primaryColor,
          weight: FontWeight.w500,
        ),
        (SizeConst.getSize(28)).height,
        Image.asset(
          'assets/images/common_logos/logo_main.png',
          height: SizeConst.getSize(isShorter != true ? 215 : 86),
        ),
        if (isShorter != true) (SizeConst.getSize(18)).height,
        if (isShorter != true)
          QuicksandText(
            title: 'Patient Version'.tr,
            size: SizeConst.getSize(30),
            color: ColorConstant.primaryColor,
            weight: FontWeight.w500,
          ),
      ],
    );
  }
}
