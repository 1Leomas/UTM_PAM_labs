import 'package:fitness_app_flutter/presentation/home/controller/goal_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../resources/custom_colors.dart';
import 'exercise_button_card_widget.dart';
import 'exercise_content_card_widget.dart';

class ExerciseCardWidget extends StatelessWidget {
  const ExerciseCardWidget({Key? key, required this.goal}) : super(key: key);

  final GoalItem goal;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        //width: 310, //310
        decoration: BoxDecoration(
          color: CustomColors.white,
          //border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.16),
              spreadRadius: 2,
              blurRadius: 24,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Material(
          type: MaterialType.transparency,
          child: Stack(
            children: [
              ExerciseContentCardWidget(goal: goal),
              ExerciseButtonCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

