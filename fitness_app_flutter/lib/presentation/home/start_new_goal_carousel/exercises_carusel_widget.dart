import 'package:fitness_app_flutter/presentation/home/widgets/header_widget.dart';
import 'package:flutter/material.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/strings.dart';
import 'exercise_card_widget.dart';

class _ExercisesCaruselWidgetState extends State<ExercisesCaruselWidget> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 310,
      height: 280,
      margin: const EdgeInsets.only(
        left: 16.0,
      ),
      //decoration: BoxDecoration( border: Border.all(color: Colors.blueAccent),),
      child: Column(
        children: [
          Expanded(
              child: PageView.builder(
                itemCount: 2,
                onPageChanged: (int index) => setState(() => _index = index),
                itemBuilder: (_, i) {
                  return ExerciseCardWidget();
                }
              )
          ),
        ],
      ),
    );
  }
}

class ExercisesCaruselWidget extends StatefulWidget {
  @override
  State<ExercisesCaruselWidget> createState() => _ExercisesCaruselWidgetState();
}
