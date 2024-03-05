import 'package:flutter/material.dart';
import '../../../data/constants/color_constant.dart';
import '../../../data/constants/size_constant.dart';

class CommonTabBar extends StatelessWidget {
  const CommonTabBar({
    super.key,
    required this.onTapAction,
    required this.currentTabIndex,
    required this.leftTabTitle,
    required this.rightTabTitle,
    this.tabController,
  });

  final Function(int) onTapAction;
  final int currentTabIndex;
  final String leftTabTitle;
  final String rightTabTitle;
  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TabBar(
          controller: tabController,
          onTap: onTapAction,
          labelPadding: EdgeInsets.symmetric(
            vertical: SizeConst.getSize(5),
          ),
          labelColor: Colors.white,
          unselectedLabelColor: const Color(0xFF0C2B43),
          indicator: BoxDecoration(
            color: ColorConstant.primaryColor,
            borderRadius: currentTabIndex > 0
                ? const BorderRadius.horizontal(
                    right: Radius.circular(50),
                  )
                : const BorderRadius.horizontal(
                    left: Radius.circular(50),
                  ),
          ),
          indicatorPadding: EdgeInsets.zero,
          indicatorColor: Theme.of(context).tabBarTheme.indicatorColor,
          tabs: [
            Tab(
              child: Text(
                leftTabTitle,
                style: TextStyle(
                    fontSize: SizeConst.getSize(14), fontFamily: 'Vinila Test'),
                textAlign: TextAlign.center,
              ),
            ),
            Tab(
              child: Tab(
                child: Text(
                  rightTabTitle,
                  style: TextStyle(
                      fontSize: SizeConst.getSize(14),
                      fontFamily: 'Vinila Test'),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
    );
  }
}
