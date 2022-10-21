import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/home_page.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_controller.dart';

class BuildTime extends StatefulWidget {
  @override
  State<BuildTime> createState() => _BuildTimeState();
}

class _BuildTimeState extends State<BuildTime> {
  @override
  Widget build(BuildContext context) {

    final controller = Get.find<InputTimeController>();

    String twoDigits(int n) => n.toString().padLeft(2, '0');

    return Obx(() {
      if(controller.buttonState.isTrue) {
        controller.sHours.value = twoDigits(controller.duration.value.inHours.remainder(60));
        controller.sMinutes.value = twoDigits(controller.duration.value.inMinutes.remainder(60));
        controller.sSeconds.value = twoDigits(controller.duration.value.inSeconds.remainder(60));
        return Text("${controller.sHours}:${controller.sMinutes}:${controller.sSeconds}");
      }
      else {
        return const SizedBox.shrink();
      }
    });
  }
}

