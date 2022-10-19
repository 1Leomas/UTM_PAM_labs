import 'package:flutter/cupertino.dart';
import 'package:lab3_figma_flutter/resources/strings.dart';
import 'package:lab3_figma_flutter/resources/text_styles.dart';

class TwoDotsWidget extends StatelessWidget {
  const TwoDotsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Text(
        Strings.towDots,
        style: TextStyles.textStyleSFPro40(),
      ),
    );
  }
}
