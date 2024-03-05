import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../data/constants/color_constant.dart';
import '../../../data/constants/size_constant.dart';
import 'text_field.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String? title;
  final IconData? prefixIconData;
  final IconData? suffixIconData;
  final TextFieldType? type;
  final bool? enabled;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final int? maxLength;
  final bool? isValidationRequired;
  final int? maxLines;
  final TextAlign? textAlign;
  final dynamic Function(String)? onChanged;
  final dynamic Function()? onTap;

  CommonTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    this.title,
    this.prefixIconData,
    this.suffixIconData,
    this.type,
    this.enabled,
    this.keyboardType,
    this.inputFormatters,
    this.maxLength,
    this.validator,
    this.isValidationRequired,
    this.maxLines,
    this.textAlign,
    this.onChanged,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      onTap: onTap,
      onChanged: onChanged,
      cursorColor: Colors.black,
      textAlign: textAlign ?? TextAlign.left,
      textFieldType: type ?? TextFieldType.OTHER,
      controller: textEditingController,
      enabled: enabled ?? true,
      isValidationRequired: isValidationRequired,
      keyboardType: keyboardType,
      maxLines: maxLines ?? 1,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      validator: validator,
      textStyle: TextStyle(
        fontSize: SizeConst.getSize(16),
        fontFamily: 'Vinila Test',
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorConstant.textFieldColor,
        counterText: "",
        contentPadding: EdgeInsets.symmetric(
          horizontal: SizeConst.getSize(26),
          vertical: SizeConst.getSize(21),
        ),
        suffixIcon: suffixIconData != null
            ? Icon(
                suffixIconData,
                color: ColorConstant.grey,
              )
            : null,
        prefixIcon: prefixIconData != null
            ? Icon(
                prefixIconData,
                color: ColorConstant.grey,
              )
            : null,
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
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorConstant.textFieldHintsColor,
        ),
        suffixIconColor: ColorConstant.textColorGlobal,
      ),
    );
  }
}
