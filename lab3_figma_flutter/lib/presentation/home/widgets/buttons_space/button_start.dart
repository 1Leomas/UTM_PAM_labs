import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/home_controller.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'package:lab3_figma_flutter/resources/svg_assets.dart';

class ButtonStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Material(
        elevation: 0,
        type: MaterialType.circle,
        color: CustomColors.fieryRose,
        child: IconButton(
          padding: const EdgeInsets.only(left: 9),
          iconSize: 76,
          splashRadius: 36,
          onPressed: () {
            if (controller.buttonState.isFalse
                && (controller.hours > 0 || controller.minutes > 0 || controller.seconds > 0)
            ) {
              controller.changeButtonSate();
              controller.startTimer();
            }
          },
          icon: SvgAssets.iconStart,
          color: CustomColors.white,
        )
    );
  }
}
