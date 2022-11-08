import 'package:flutter/material.dart';

import '../../../resources/custom_colors.dart';
import 'exercise_card_button_widget.dart';
import 'exercise_content_card_widget.dart';

class ExerciseCardWidget extends StatelessWidget {
  const ExerciseCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      //height: 276,
      margin: const EdgeInsets.only(top: 16.0, right: 64),
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
            ExerciseCardButtonWidget(),
          ],
        ),
      ),
    );
  }
}
