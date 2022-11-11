import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/custom_colors.dart';
import '../../resources/strings.dart';
import 'controller/home_controller.dart';
import 'daily_exercise/daily_execises_list.dart';
import 'goal_carousel/goal_carousel_widget.dart';
import 'daily_exercise/daily_exercise.dart';
import 'widgets/header_widget.dart';

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    Get.lazyPut(() => HomeController());
    HomeController controller = Get.find();
    controller.readJsonFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    HomeController controller = Get.find();

    return Scaffold(
      body: Container(
        //color: CustomColors.cultured,
        //decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 3),),
        child: ListView(
          children: [
            const HeaderWidget(title: Strings.startNewGoal),
            GoalCarouselWidget(goals: controller.goalItems),
            const HeaderWidget(title: Strings.dailyTask),
            DailyExercisesList(exercises: controller.exerciseItems),
          ],
        ),
      )
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();

}
