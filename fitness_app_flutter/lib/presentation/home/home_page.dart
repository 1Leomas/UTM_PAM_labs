import 'package:fitness_app_flutter/presentation/home/start_new_goal_carousel/start_new_goal_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/strings.dart';
import '../../resources/text_styles.dart';
import 'home_controller.dart';

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
            StartNewGoalWidget(),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();

}
