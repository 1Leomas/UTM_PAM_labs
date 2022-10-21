import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_controller.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'package:lab3_figma_flutter/resources/enums.dart';
import 'package:lab3_figma_flutter/resources/strings.dart';
import 'package:lab3_figma_flutter/resources/text_styles.dart';

class InputTimeBoxWidget extends StatefulWidget {
  const InputTimeBoxWidget (this.timeType, {super.key, required this.inputController});

  final TextEditingController inputController;
  final TimeType timeType;

  @override
  State<InputTimeBoxWidget> createState() => _InputTimeBoxWidgetState();
}

class _InputTimeBoxWidgetState extends State<InputTimeBoxWidget> {

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<InputTimeController>();

    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              color: CustomColors.charlestonGreen,
              borderRadius: const BorderRadius.all(Radius.circular(4))
          ),
          child: Center(
            child: TextField(
              controller: widget.inputController,
              keyboardType: TextInputType.number,
              style: TextStyles.textStyleSFPro32(),
              decoration: InputDecoration(
                hintText: Strings.zeroZero,
                hintStyle: TextStyles.textStyleSFPro32(),
                counterText: "",
                border: InputBorder.none,
              ),
              textAlign: TextAlign.center,
              maxLength: 2,
              cursorColor: CustomColors.white,
              onChanged: (value) {
                  if(widget.timeType == TimeType.hours) {
                    controller.updateHours(value.isNotEmpty
                        ? int.parse(widget.inputController.text)
                        : 0);
                  }
                  if(widget.timeType == TimeType.minutes) {
                    controller.updateMinutes(value.isNotEmpty
                        ? int.parse(widget.inputController.text)
                        : 0);
                  }
                  if(widget.timeType == TimeType.seconds) {
                    controller.updateSeconds(int.parse(widget.inputController.text));
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
