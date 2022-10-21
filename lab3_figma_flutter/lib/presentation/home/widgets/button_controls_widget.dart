import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_controller.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'package:lab3_figma_flutter/resources/svg_assets.dart';

class _ButtonControlWidgetState extends State<ButtonControlWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<InputTimeController>();
    return Material(
      elevation: 0,
      type: MaterialType.circle,
      color: CustomColors.fieryRose,
      child: Obx(() => IconButton(
        padding: (controller.buttonState.isTrue)
            ? const EdgeInsets.only(left: 0)
            : const EdgeInsets.only(left: 9),
        iconSize: 76,
        splashRadius: 36,
        onPressed: () {
          controller.changeButtonSate();
          if (controller.buttonState.isTrue) {
            controller.startTimer();
          } else {
            controller.stopTimer();
          }
        },
        icon: controller.buttonState.value
            ? SvgAssets.iconPause
            : SvgAssets.iconStart,
        color: CustomColors.white,
      )),
    );
  }
}

class ButtonControlWidget extends StatefulWidget {
  @override
  State<ButtonControlWidget> createState() => _ButtonControlWidgetState();
}
