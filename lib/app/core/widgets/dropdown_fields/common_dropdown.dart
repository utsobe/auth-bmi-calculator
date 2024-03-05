import 'package:flutter/material.dart';
import '../../../data/constants/color_constant.dart';
import '../../../data/constants/size_constant.dart';
import '../text_widgets/vinilatest_text.dart';

class CommonDropdown extends StatelessWidget {
  final List<DropdownMenuItem<dynamic>> options;
  final Function(dynamic) onChanged;
  final double? height;
  final String hintText;
  final Color? color;
  final dynamic initialValue;

  CommonDropdown({
    super.key,
    required this.options,
    required this.onChanged,
    this.height,
    required this.hintText,
    this.color,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorConstant.textFieldColor,
        counterText: "",
        contentPadding: EdgeInsets.symmetric(
          horizontal: SizeConst.getSize(26),
          vertical: SizeConst.getSize(17),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstant.primaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(51, 49, 49, 49)),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(100, 49, 49, 49)),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstant.primaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        // hintText: hintText,
        // hintStyle: TextStyle(
        //   color: ColorConstant.textFieldHintsColor,
        // ),
      ),
      hint: VinilaText(
        title: hintText,
        size: SizeConst.getSize(16),
        color: ColorConstant.textFieldHintsColor,
      ),
      // Set the suffix icon here
      icon: Icon(
        Icons.expand_more_outlined,
        color: ColorConstant.grey,
      ),
      onChanged: onChanged,
      items: options,
      value: initialValue,
    );
  }
}
