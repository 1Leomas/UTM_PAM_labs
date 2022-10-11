import 'package:flutter/cupertino.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';

import 'fonts.dart';

class TextStyles {
  static TextStyle textStyleSFPro32({Color? color}) =>
      TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: color ?? CustomColors.white,
          fontFamily: Fonts.sfProText);
}