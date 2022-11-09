import 'dart:convert';

import 'package:fitness_app_flutter/presentation/home/start_new_goal_carousel/exercises_carousel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'show rootBundle;
import 'package:get/get.dart';

import '../../resources/strings.dart';
import '../../resources/text_styles.dart';
import 'controller/home_controller.dart';
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

    //var goal = controller.goalItems;
    //print('----------${controller.goalItems.length}');
    //print('--------- ${goal.title}!! ----------');
    //print('--------- ${goal.subTitle}!! ----------');

    return Scaffold(
      body: ListView(
          children: [
            HeaderWidget(title: Strings.startNewGoal),
            ExercisesCaruselWidget(),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();

}
