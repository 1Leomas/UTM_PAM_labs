import 'package:flutter/material.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/strings.dart';
import '../../../resources/svg_assets.dart';
import '../widgets/exercise_properties_widget.dart';

class TimeCalContainer extends StatelessWidget {
  //const TimeCalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 12.0, top: 16.0, bottom: 16.0),
          width: 85,
          height: 32,
          decoration: BoxDecoration(
            color: CustomColors.honeydew,
            border: Border.all(color: CustomColors.yellowGreen),
            borderRadius: BorderRadius.circular(16),
          ),
          child: ExercisePropertiesWidget(
            icon: SvgAssets.iconClock,
            content: Strings.string35Min,
            color: CustomColors.yellowGreen,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
          width: 85,
          height: 32,
          decoration: BoxDecoration(
            color: CustomColors.floralWhite,
            border: Border.all(color: CustomColors.uclaGold),
            borderRadius: BorderRadius.circular(16),
          ),
          child: ExercisePropertiesWidget(
              content: Strings.string120Cal,
              color: CustomColors.uclaGold,
              icon: SvgAssets.iconFire),
        ),
      ],
    );
  }
}
