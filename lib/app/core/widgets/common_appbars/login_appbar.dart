import 'package:bmi_calculator/app/data/constants/extensions/double_extension.dart';
import 'package:bmi_calculator/app/data/constants/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/constants/size_constant.dart';
import '../text_widgets/vinilatest_text.dart';

class LoginAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Function? callBackFunction;
  final bool? isLeadingVisible;

  const LoginAppbar({
    super.key,
    this.callBackFunction,
    this.isLeadingVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: isLeadingVisible == true
          ? Image.asset(
              'assets/images/common_icons/arrow_left.png',
              height: SizeConst.getSize(41),
            ).paddingOnly(left: SizeConst.getSize(15)).onTap(
                callBackFunction ?? () => Get.back(),
              )
          : null,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/images/common_icons/headset.png',
            height: SizeConst.getSize(28),
          ),
          (SizeConst.getSize(5)).width,
          VinilaText(
            title: 'Helpdesk'.tr,
            size: SizeConst.getSize(14),
            color: const Color(0xFF949494),
          ),
        ],
      ).marginOnly(right: SizeConst.getSize(10)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
