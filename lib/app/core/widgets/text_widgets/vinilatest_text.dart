import 'package:flutter/material.dart';

import '../../../data/constants/size_constant.dart';

class VinilaText extends StatelessWidget {
  final String title;
  final Color? color;
  final double? size;
  final FontWeight? weight;
  final FontStyle? style;
  final TextAlign? align;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? spacing;

  const VinilaText({
    super.key,
    required this.title,
    this.color,
    this.size,
    this.weight,
    this.style,
    this.align,
    this.overflow,
    this.maxLines,
    this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? Colors.black, //ColorConstant.textColorGlobal,
        fontSize: size ?? SizeConst.getSize(16),
        fontWeight: weight ?? FontWeight.normal,
        fontStyle: style ?? FontStyle.normal,
        letterSpacing: spacing,
        fontFamily: 'Vinila Test',
      ),
      textAlign: align ?? TextAlign.start,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
