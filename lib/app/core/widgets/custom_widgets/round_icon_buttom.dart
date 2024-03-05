import 'package:bmi_calculator/app/data/constants/size_constant.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPress});

  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        width: SizeConst.getSize(56),
        height: SizeConst.getSize(56),
      ),
      shape: CircleBorder(),
      fillColor: Colors.grey.shade200,
    );
  }
}
