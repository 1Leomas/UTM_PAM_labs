import 'package:fitness_app_flutter/presentation/home/controller/goal_item.dart';
import 'package:flutter/material.dart';

import 'time_cal_container.dart';
import 'image_card_widget.dart';
import 'title_description_widget.dart';

class ExerciseContentCardWidget extends StatelessWidget {
  const ExerciseContentCardWidget({Key? key, required this.goal}) : super(key: key);

  final GoalItem goal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageCardWidget(cover: goal.cover),
        TitleDescriptionWidget(),
        TimeCalContainer(),
      ],
    );
  }
}
