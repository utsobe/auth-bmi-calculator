import 'package:bmi_calculator/app/data/constants/size_constant.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    this.color,
    required this.cardChild,
    required this.onPress,
  });

  final Color? color;
  final Widget cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(SizeConst.getSize(20)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color ?? Colors.white,
        ),
        child: cardChild,
      ),
    );
  }
}
