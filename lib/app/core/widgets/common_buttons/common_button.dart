import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/color_constant.dart';
import '../../../data/constants/size_constant.dart';
import '../text_widgets/vinilatest_text.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback callBack;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final IconData? iconData;
  final BorderRadius? borderRadius;

  const CommonButton(
      {super.key,
      required this.title,
      required this.callBack,
      this.buttonColor,
      this.iconData,
      this.buttonTextColor,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callBack,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(50.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
            buttonColor ?? ColorConstant.primaryColor),
      ),
      child: SizedBox(
        height: SizeConst.getSize(62),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              iconData != null
                  ? Icon(
                      iconData,
                      color: buttonTextColor ?? Colors.white,
                    ).marginOnly(right: 10)
                  : Container(),
              VinilaText(
                title: title,
                color: buttonTextColor ?? Colors.white,
                size: SizeConst.getSize(16),
                // spacing: spacing,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
