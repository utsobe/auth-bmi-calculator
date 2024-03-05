import 'package:bmi_calculator/app/core/widgets/text_widgets/poppins_text.dart';
import 'package:bmi_calculator/app/data/constants/extensions/double_extension.dart';
import 'package:bmi_calculator/app/data/constants/size_constant.dart';
import 'package:bmi_calculator/app/modules/bottom_navigation/controllers/bottom_navigation_controller.dart';
import 'package:bmi_calculator/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(SizeConst.getSize(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PoppinsText(
                title: 'Settings',
                size: SizeConst.getSize(26),
                weight: FontWeight.bold,
              ),
              (SizeConst.getSize(20)).height,
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.description_outlined,
                        size: SizeConst.getSize(24),
                      ),
                      title: PoppinsText(title: 'Terms and Condition'),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: SizeConst.getSize(24),
                      ),
                      onTap: () {
                        print('test');
                        Get.toNamed(Routes.TERM_CONDITION);
                      },
                    ),
                    ListTile(
                      leading: LineIcon(
                        LineIcons.poll,
                        size: SizeConst.getSize(24),
                      ),
                      title: PoppinsText(title: 'Results'),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: SizeConst.getSize(24),
                      ),
                      onTap: () {
                        Get.find<BottomNavigationController>()
                            .currentPageIndex
                            .value = 1;
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.logout_outlined,
                        size: SizeConst.getSize(24),
                      ),
                      title: PoppinsText(title: 'Logout'),
                      // trailing: Icon(
                      //   Icons.arrow_forward_ios_outlined,
                      //   size: SizeConst.getSize(24),
                      // ),
                      onTap: () {
                        print('test');
                        Get.offAllNamed(Routes.LOGIN);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
