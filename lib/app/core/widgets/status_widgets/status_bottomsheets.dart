import 'package:bmi_calculator/app/data/constants/extensions/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../data/constants/color_constant.dart';
import '../../../data/constants/size_constant.dart';
import '../../../routes/app_pages.dart';
import '../common_buttons/common_button.dart';
import '../text_widgets/poppins_text.dart';

// ignore: must_be_immutable
class BottomSheetStatus extends StatelessWidget {
  final bool isSuccess;
  String? title;
  final bool hasButton;
  final bool isLogin;
  final VoidCallback? ontap;

  BottomSheetStatus({
    Key? key,
    required this.isSuccess,
    this.title,
    this.ontap,
    required this.hasButton,
    this.isLogin = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              (SizeConst.getSize(16)).height,
              PoppinsText(
                title: isSuccess ? 'Success' : 'Failed',
                size: SizeConst.getSize(30),
                weight: FontWeight.w600,
              ),
              (SizeConst.getSize(12)).height,
              LottieBuilder.asset(
                isSuccess
                    ? 'assets/lottie_files/success.json'
                    : 'assets/lottie_files/error.json',
                fit: BoxFit.fill,
                width: SizeConst.getSize(200),
                height: SizeConst.getSize(200),
              ),
              (Get.height * 0.03).height,
              PoppinsText(
                title: title ??
                    (isSuccess
                        ? 'Password has been updated'
                        : 'Sorry, we are unable to process your request'),
                size: SizeConst.getSize(16),
              ),
              (Get.height * 0.03).height,
              hasButton
                  ? CommonButton(
                      title: isLogin
                          ? 'Back to login page'
                          : isSuccess
                              ? 'Done'
                              : 'Back',
                      callBack: ontap ??
                          () =>
                              isLogin ? Get.toNamed(Routes.HOME) : Get.close(2),
                      buttonColor: isSuccess
                          ? ColorConstant.primaryColor
                          : ColorConstant.commonPink,
                    )
                  : Container()
            ],
          ).paddingAll(SizeConst.getSize(25)),
        ));
  }
}
