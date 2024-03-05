import 'dart:io';

import 'package:get/get.dart';

class SizeConst {
  // FOR ANY NUMBER
  static double getSize(double input) {
    double ratio;
    if (Platform.isIOS) {
      ratio = 0.03 / 12;
    } else if (Platform.isAndroid) {
      ratio = 0.03 / 13;
    } else {
      ratio = 0.03 / 12;
    } // Standerd 12px
    double equivalentValue = input * ratio;
    double finalWidth = Get.width * equivalentValue;
    return finalWidth;
  }
}
