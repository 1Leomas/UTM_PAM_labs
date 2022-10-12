import 'package:flutter/cupertino.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box_widget.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'package:lab3_figma_flutter/resources/strings.dart';
import 'package:lab3_figma_flutter/resources/text_styles.dart';

class InputTimeWidget extends StatefulWidget {

  @override
  State<InputTimeWidget> createState() => _InputTimeWidgetState();
}

class _InputTimeWidgetState extends State<InputTimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputTimeBoxWidget(whatTimeType: Strings.hours),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Text(
                Strings.towDots,
                style: TextStyles.textStyleSFPro40(),
              ),
            ),
            InputTimeBoxWidget(whatTimeType: Strings.minutes),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Text(
                Strings.towDots,
                style: TextStyles.textStyleSFPro40(),
              ),
            ),
            InputTimeBoxWidget(whatTimeType: Strings.seconds),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                Strings.hours,
                style: TextStyles.textStyleSFPro14(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                Strings.minutes,
                style: TextStyles.textStyleSFPro14(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
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
