import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_controller.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'package:lab3_figma_flutter/resources/svg_assets.dart';

class ButtonPause extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<InputTimeController>();

    return Material(
        elevation: 0,
        type: MaterialType.circle,
        color: CustomColors.fieryRose,
        child: IconButton(
          padding: controller.buttonPause.isFalse ? const EdgeInsets.only(left: 0) : const EdgeInsets.only(left: 9),
          iconSize: 76,
          splashRadius: 36,
          onPressed: () {
            if (controller.buttonPause.isFalse) {
              controller.pauseTimer();
              controller.buttonPause(true);
            } else {
              controller.unPauseTimer();
              controller.buttonPause(false);
            }
          },
          icon: controller.buttonPause.isFalse ? SvgAssets.iconPause : SvgAssets.iconStart,
          color: CustomColors.white,
        )
    );
  }
}
