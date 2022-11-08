import 'package:flutter/material.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/strings.dart';
import '../../../resources/svg_assets.dart';
import '../widgets/exercise_properties_widget.dart';
import 'time_cal_container.dart';
import 'image_card_widget.dart';
import 'title_description_widget.dart';

class ExerciseContentCardWidget extends StatelessWidget {
  //const ExerciseContentCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageCardWidget(),
        TitleDescriptionWidget(),
        TimeCalContainer(),
      ],
    );
  }
}
