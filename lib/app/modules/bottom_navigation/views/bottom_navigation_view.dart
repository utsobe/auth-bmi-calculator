import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  const BottomNavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: controller.getCurrentPage(),
        bottomNavigationBar: NavigationBar(
          selectedIndex: controller.currentPageIndex.value,
          onDestinationSelected: (value) {
            controller.currentPageIndex.value = value;
          },
          // animationDuration: 3000.ms,
          backgroundColor: const Color(0xFFFBFCFE),
          elevation: 0,
          destinations: const [
            NavigationDestination(
              icon: LineIcon(LineIcons.calculator),
              label: 'Calculate',
            ),
            NavigationDestination(
              icon: LineIcon(LineIcons.poll),
              label: 'Results',
            ),
            NavigationDestination(
              icon: LineIcon(LineIcons.cog),
              label: 'Settings',
            ),
          ],
        ),
      );
    });
  }
}
