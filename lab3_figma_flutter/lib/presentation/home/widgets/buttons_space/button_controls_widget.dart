import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/buttons_space/button_pause.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/buttons_space/button_start.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/buttons_space/button_stop.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_controller.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'package:lab3_figma_flutter/resources/enums.dart';
import 'package:lab3_figma_flutter/resources/svg_assets.dart';

class _ButtonControlWidgetState extends State<ButtonControlWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<InputTimeController>();
    return Obx(() {
      if(controller.isTimerRuning()
          //|| !controller.isCompleted()
      ) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonStop(),
            ButtonPause()
          ],
        );
      }
      else {
        return ButtonStart();
      }
    });
  }
}

class ButtonControlWidget extends StatefulWidget {
  @override
  State<ButtonControlWidget> createState() => _ButtonControlWidgetState();
}
