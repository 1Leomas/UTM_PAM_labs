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

    print("------- ${controller.goalItems.isNull}");
    print("------- ${controller.goalItems.length}");
    return Scaffold(
      body: Container(
        color: CustomColors.cultured,
        //decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 3),),

        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const HeaderWidget(title: Strings.startNewGoal),

            Obx( () => controller.goalItems.isNotEmpty
                ? GoalCarouselWidget(goals: controller.goalItems)
                : Container(width: 30, height: 300,
                     child: const CircularProgressIndicator(),
                  )
            ),

            const HeaderWidget(title: Strings.dailyTask),

            Obx( () => controller.exerciseItems.isNotEmpty
                ? DailyExercisesList(exercises: controller.exerciseItems)
                : Container(width: 30, height: 300,
                    child: const CircularProgressIndicator(),
                  )
            ),
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
