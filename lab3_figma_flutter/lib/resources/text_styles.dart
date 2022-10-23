import 'package:flutter/cupertino.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';

import 'fonts.dart';

class TextStyles {
  static TextStyle textStyleSFPro32({Color? color, double fontSize = 32}) =>
      TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: color ?? CustomColors.white,
        fontFamily: Fonts.sfProText);

  static TextStyle textStyleSFPro40({Color? color}) =>
      TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w500,
          color: color ?? CustomColors.white,
          fontFamily: Fonts.sfProText);

  static TextStyle textStyleSFPro14({Color? color}) =>
      TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: color ?? CustomColors.white,
          fontFamily: Fonts.sfProText);
}