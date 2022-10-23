import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_controller.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'package:lab3_figma_flutter/resources/svg_assets.dart';

class ButtonStop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<InputTimeController>();

    return Material(
        elevation: 0,
        type: MaterialType.circle,
        color: CustomColors.fieryRose,
        child: IconButton(
          padding: const EdgeInsets.only(left: 0),
          iconSize: 76,
          splashRadius: 36,
          onPressed: () {
            controller.buttonState(false);
            controller.buttonPause(false);
            controller.stopTimer();
          },
          icon: SvgAssets.iconStop
          ,
          color: CustomColors.white,
        )
    );
  }
}
