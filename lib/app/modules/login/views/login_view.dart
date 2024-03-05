import 'package:bmi_calculator/app/core/widgets/common_widgets/common_widget.dart';
import 'package:bmi_calculator/app/core/widgets/text_widgets/poppins_text.dart';
import 'package:bmi_calculator/app/data/constants/color_constant.dart';
import 'package:bmi_calculator/app/data/constants/extensions/double_extension.dart';
import 'package:bmi_calculator/app/data/constants/extensions/widget_extensions.dart';
import 'package:bmi_calculator/app/data/constants/size_constant.dart';
import 'package:bmi_calculator/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/common_buttons/common_icon_button.dart';
import '../../../core/widgets/text_fields/common_textfield.dart';
import '../../../core/widgets/text_fields/text_field.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: controller.formKey,
        child: Padding(
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
                  hintText: 'Enter Your Email'.tr,
                  type: TextFieldType.EMAIL,
                  textAlign: TextAlign.center,
                  isValidationRequired: true,
                ),
                (SizeConst.getSize(15)).height,
                CommonTextField(
                  prefixIconData: Icons.lock_outline,
                  textEditingController: controller.password,
                  hintText: 'Enter Your Password'.tr,
                  type: TextFieldType.PASSWORD,
                  textAlign: TextAlign.center,
                  isValidationRequired: true,
                ),
                (SizeConst.getSize(30)).height,
                CommonIconButton(
                  title: 'Login'.tr,
                  callBack: () {
                    // controller.login();
                    // controller.localDB.setIsLoggedIn(true);
                    if (controller.formKey.currentState!.validate()) {
                      if (controller.email.text == 'zzj2004@gmail.com' &&
                          controller.password.text == '3april1962') {
                        Get.offNamed(Routes.BOTTOM_NAVIGATION);
                      } else {
                        toast('Invalid Email or Password!',
                            bgColor: Colors.red);
                      }
                    }
                  },
                  suffixIconData: Icons.arrow_forward,
                ),
                Spacer(
                  flex: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PoppinsText(title: 'New to BMI Calculator?'),
                    (SizeConst.getSize(5)).width,
                    PoppinsText(
                      title: 'Register',
                      color: ColorConstant.primaryColor,
                    ),
                  ],
                ).onTap(() {
                  Get.offNamed(Routes.REGISTER);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
