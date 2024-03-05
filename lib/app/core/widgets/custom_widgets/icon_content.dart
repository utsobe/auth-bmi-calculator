import 'package:bmi_calculator/app/core/widgets/text_widgets/poppins_text.dart';
import 'package:bmi_calculator/app/data/constants/extensions/double_extension.dart';
import 'package:bmi_calculator/app/data/constants/size_constant.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: SizeConst.getSize(80),
        ),
        (SizeConst.getSize(16)).height,
        PoppinsText(
          title: label,
          size: SizeConst.getSize(18),
          color: Color(0xFF8D8E98),
        ),
      ],
    );
  }
}
