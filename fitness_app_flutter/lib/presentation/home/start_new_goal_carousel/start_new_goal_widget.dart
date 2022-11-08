import 'package:fitness_app_flutter/presentation/home/widgets/header_widget.dart';
import 'package:flutter/material.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/strings.dart';
import 'exercise_card_widget.dart';

class _StartNewGoalWidgetState extends State<StartNewGoalWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      margin: const EdgeInsets.only(
        top: 29.0,
        left: 16.0,
      ),
      padding: const EdgeInsets.only(right: 16.0),
      //decoration: BoxDecoration( border: Border.all(color: Colors.blueAccent),),

      child: Column(
        children: const [
          HeaderWidget(title: Strings.startNewGoal),
          ExerciseCardWidget(),
        ],
      ),
    );
  }
}

class StartNewGoalWidget extends StatefulWidget {
  @override
  State<StartNewGoalWidget> createState() => _StartNewGoalWidgetState();
}
