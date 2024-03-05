import 'package:bmi_calculator/app/data/constants/extensions/double_extension.dart';
import 'package:bmi_calculator/app/data/constants/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/widgets/common_buttons/common_icon_button.dart';
import '../../../core/widgets/text_fields/common_textfield.dart';
import '../../../core/widgets/text_fields/text_field.dart';
import '../../../core/widgets/text_widgets/poppins_text.dart';
import '../../../data/constants/color_constant.dart';
import '../../../data/constants/size_constant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  controller.image,
                  height: SizeConst.getSize(100),
                  width: SizeConst.getSize(100),
                ),
              ),
              Spacer(),
              CommonTextField(
                prefixIconData: Icons.card_membership_outlined,
                textEditingController: controller.email,
                hintText: 'Enter Your Name'.tr,
                type: TextFieldType.EMAIL,
                textAlign: TextAlign.center,
              ),
              (SizeConst.getSize(15)).height,
              CommonTextField(
                prefixIconData: Icons.lock_outline,
                textEditingController: controller.password,
                hintText: 'Enter Your Email'.tr,
                type: TextFieldType.EMAIL,
                textAlign: TextAlign.center,
              ),
              (SizeConst.getSize(15)).height,
              CommonTextField(
                prefixIconData: Icons.face_outlined,
                textEditingController: controller.email,
                hintText: 'Enter Your Age'.tr,
                type: TextFieldType.PHONE,
                textAlign: TextAlign.center,
              ),
              (SizeConst.getSize(15)).height,
              CommonTextField(
                prefixIconData: Icons.lock_outline,
                textEditingController: controller.password,
                hintText: 'Enter Your Password'.tr,
                type: TextFieldType.PASSWORD,
                textAlign: TextAlign.center,
              ),
              (SizeConst.getSize(30)).height,
              CommonIconButton(
                title: 'Register'.tr,
                callBack: () {
                  // controller.login();
                  Get.offNamed(Routes.LOGIN);
                },
                suffixIconData: Icons.arrow_forward,
              ),
              Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PoppinsText(title: 'Already have an account?'),
                  (SizeConst.getSize(5)).width,
                  PoppinsText(
                    title: 'Login',
                    color: ColorConstant.primaryColor,
                  ),
                ],
              ).onTap(() {
                Get.offNamed(Routes.LOGIN);
              })
            ],
          ),
        ),
      ),
    );
  }
}
