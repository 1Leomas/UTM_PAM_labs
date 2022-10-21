import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_box_widget.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_controller.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/twoDots.dart';
import 'package:lab3_figma_flutter/resources/enums.dart';
import 'package:lab3_figma_flutter/resources/strings.dart';
import 'package:lab3_figma_flutter/resources/text_styles.dart';

class _InputTimeWidgetState extends State<InputTimeWidget> {
  @override
  Widget build(BuildContext context) {
    InputTimeController controller = Get.find();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputTimeBoxWidget(inputController: controller.hoursController, TimeType.hours,),
            const TwoDotsWidget(),
            InputTimeBoxWidget(inputController: controller.minutesController, TimeType.minutes,),
            const TwoDotsWidget(),
            InputTimeBoxWidget(inputController: controller.secondsController, TimeType.seconds,),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Text(
                Strings.hours,
                style: TextStyles.textStyleSFPro14(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 42),
              child: Text(
                Strings.minutes,
                style: TextStyles.textStyleSFPro14(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 33),
              child: Text(
                Strings.seconds,
                style: TextStyles.textStyleSFPro14(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class InputTimeWidget extends StatefulWidget {
  @override
  State<InputTimeWidget> createState() => _InputTimeWidgetState();
}
