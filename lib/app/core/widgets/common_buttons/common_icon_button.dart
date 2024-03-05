import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants/color_constant.dart';
import '../../../data/constants/size_constant.dart';
import '../text_widgets/vinilatest_text.dart';

class CommonIconButton extends StatelessWidget {
  final String title;
  final VoidCallback callBack;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final IconData? suffixIconData;
  final Widget? suffixIconWidget;
  final BorderRadius? borderRadius;
  final double? titleSize;

  const CommonIconButton({
    super.key,
    required this.title,
    required this.callBack,
    this.buttonColor,
    this.buttonTextColor,
    this.borderRadius,
    this.suffixIconData,
    this.suffixIconWidget,
    this.titleSize,
  });

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
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(
                flex: 5,
              ),
              VinilaText(
                title: title,
                color: buttonTextColor ?? Colors.white,
                size: titleSize ?? SizeConst.getSize(18),
                // spacing: spacing,
              ),
              const Spacer(
                flex: 3,
              ),
              suffixIconWidget != null
                  ? suffixIconWidget!
                  : suffixIconData != null
                      ? Container(
                          height: SizeConst.getSize(40),
                          width: SizeConst.getSize(40),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            suffixIconData,
                            color: buttonColor ?? ColorConstant.primaryColor,
                          ).marginOnly(right: 0),
                        )
                      : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
