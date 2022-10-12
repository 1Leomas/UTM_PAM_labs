import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'package:lab3_figma_flutter/resources/strings.dart';
import 'package:lab3_figma_flutter/resources/text_styles.dart';

class InputTimeBoxWidget extends StatefulWidget {
  const InputTimeBoxWidget ({ Key? key, required this.whatTimeType }): super(key: key);

  final String whatTimeType;


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
            child: TextField(
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
            ),
          ),
        ),
      ],
    );
  }
}
