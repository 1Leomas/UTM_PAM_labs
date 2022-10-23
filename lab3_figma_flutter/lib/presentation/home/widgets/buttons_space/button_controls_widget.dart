import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/buttons_space/button_pause.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/buttons_space/button_start.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/buttons_space/button_stop.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_controller.dart';

class _ButtonControlWidgetState extends State<ButtonControlWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<InputTimeController>();
    return Obx(() {
      if(controller.isTimerRunning()
          || !controller.isCompleted()
      ) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (controller.buttonPause.isTrue && controller.buttonState.isTrue) ButtonStop(),
            if (controller.buttonPause.isTrue && controller.buttonState.isTrue) const SizedBox(width: 8),
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
