import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/custom_colors.dart';
import '../../resources/strings.dart';
import '../../resources/text_styles.dart';
import 'controller/home_controller.dart';
import 'exercise_card/exercises_carousel_widget.dart';
import 'widgets/header_widget.dart';

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    //Get.put(HomeController());
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
        color: CustomColors.cultured,
        child: ListView(
          children: [
            HeaderWidget(title: Strings.startNewGoal),
            ExercisesCarouselWidget(goals: controller.goalItems),
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
