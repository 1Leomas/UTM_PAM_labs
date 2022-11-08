import 'package:flutter/material.dart';

import '../../../resources/custom_colors.dart';
import 'exercise_button_card_widget.dart';
import 'exercise_content_card_widget.dart';

class ExerciseCardWidget extends StatelessWidget {
  const ExerciseCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,

      child: Container(
        //width: 300,
        //height: 273,
        margin: const EdgeInsets.only(right: 64),
        decoration: BoxDecoration(
          color: CustomColors.white,
          //border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.16),
              spreadRadius: 2,
              blurRadius: 24,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Material(
          type: MaterialType.transparency,
          child: Stack(
            children: [
              ExerciseContentCardWidget(),
              ExerciseButtonCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}