import 'package:fitness_app_flutter/presentation/home/controller/goal_item.dart';
import 'package:fitness_app_flutter/presentation/home/controller/home_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/custom_colors.dart';
import 'exercise_card_widget.dart';

class ExercisesCarouselWidget extends StatefulWidget {
  const ExercisesCarouselWidget({super.key, required this.goals});

  final List<GoalItem> goals;

  @override
  State<ExercisesCarouselWidget> createState() => _ExercisesCarouselWidgetState();
}

class _ExercisesCarouselWidgetState extends State<ExercisesCarouselWidget> {
  @override
  Widget build(BuildContext context) {

    HomeController controller = Get.find();

    return SizedBox(
      //width: 310,
      height: 280,
      //decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent),),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: PageController(viewportFraction: 0.85),
              padEnds: false,
              itemCount: widget.goals.length,
              itemBuilder: (_, i) {
                var goal = widget.goals[i];
                return Row(
                  children: [
                    const SizedBox(width: 16,),
                    ExerciseCardWidget(goal: goal),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
