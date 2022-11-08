import 'package:fitness_app_flutter/presentation/home/start_new_goal_carousel/exercises_carusel_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/strings.dart';
import '../../resources/text_styles.dart';
import 'home_controller.dart';
import 'widgets/header_widget.dart';

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    Get.put(HomeController());
    HomeController controller = Get.find();
  }

  @override
  Widget build(BuildContext context) {
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
