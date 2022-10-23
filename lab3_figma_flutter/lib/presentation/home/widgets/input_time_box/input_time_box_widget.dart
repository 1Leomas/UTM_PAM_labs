import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'package:lab3_figma_flutter/resources/text_styles.dart';
import 'package:numberpicker/numberpicker.dart';

class InputTimeBoxWidget extends StatefulWidget {
  const InputTimeBoxWidget (this.time, {super.key,this.maxValue = 59});

  final RxInt time;
  final int maxValue;

  @override
  State<InputTimeBoxWidget> createState() => _InputTimeBoxWidgetState();
}

class _InputTimeBoxWidgetState extends State<InputTimeBoxWidget> {

  @override
  Widget build(BuildContext context) {
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
            child: Obx(() => NumberPicker(
              selectedTextStyle: TextStyles.textStyleSFPro32(fontSize: 40),
              //infiniteLoop: true,
              zeroPad: true,
              itemCount: 1,
              itemHeight: 40,
              minValue: 0,
              maxValue: widget.maxValue,
              value: widget.time.value,
              onChanged: (int value) {
                widget.time(value);
              },
            ))
          ),
        ),
      ],
    );
  }
}
