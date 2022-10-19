import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_contreller.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'package:lab3_figma_flutter/resources/svg_assets.dart';

class ButtonControlWidget extends StatefulWidget {
  @override
  State<ButtonControlWidget> createState() => _ButtonControlWidgetState();
}

class _ButtonControlWidgetState extends State<ButtonControlWidget> {
  final controller = Get.find<InputTimeController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => IconButton(
      padding: (controller.buttonIsPressed.value == true)
                    ? const EdgeInsets.only(left: 9)
                    : const EdgeInsets.only(left: 0),
      iconSize: 76,
      splashRadius: 40,
      onPressed: () {
        controller.changeButtonSate();
      },
      icon: controller.buttonIsPressed.value ? SvgAssets.iconStart : SvgAssets.iconPause,
      color: CustomColors.white,
    ));
  }
}
