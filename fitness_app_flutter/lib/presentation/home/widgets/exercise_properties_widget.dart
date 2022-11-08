import 'package:fitness_app_flutter/resources/custom_colors.dart';
import 'package:fitness_app_flutter/resources/svg_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/strings.dart';
import '../../../resources/text_styles.dart';

class ExercisePropertiesWidget extends StatelessWidget {
  const ExercisePropertiesWidget({
    super.key,
    required this.icon,
    required this.content,
    required this.color});

  final String content;
  final Widget icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        icon,
        Text(
          content,
          style: TextStyles.poppins14(color: color, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
