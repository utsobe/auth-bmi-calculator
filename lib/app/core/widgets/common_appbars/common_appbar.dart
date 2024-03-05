import 'package:bmi_calculator/app/data/constants/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/constants/size_constant.dart';
import '../text_widgets/vinilatest_text.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? callBackFunction;
  final bool? isLeadingVisible;
  final String appbarTitle;
  final bool? isRefreshVisible;
  final VoidCallback? onRefresh;
  final Widget? actionWidget;

  const CommonAppbar({
    super.key,
    this.callBackFunction,
    this.isLeadingVisible = true,
    required this.appbarTitle,
    this.isRefreshVisible = false,
    this.onRefresh,
    this.actionWidget,
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
      centerTitle: true,
      title: VinilaText(
        title: appbarTitle,
        size: SizeConst.getSize(24),
        weight: FontWeight.w700,
        color: const Color(0xFF152939),
        spacing: -0.28,
      ),
      actions: [
        actionWidget != null
            ? actionWidget!
            : isRefreshVisible == true
                ? Image.asset(
                    'assets/images/common_icons/refresh.png',
                    height: SizeConst.getSize(24),
                  ).onTap(onRefresh)
                : Container(),
        // if (actionWidget != null) actionWidget!
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
