import 'package:flutter/cupertino.dart';
import 'package:lab3_figma_flutter/resources/strings.dart';
import 'package:lab3_figma_flutter/resources/text_styles.dart';


class HomeTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        Strings.homeTitle,
        style: TextStyles.textStyleSFPro32(),
        textAlign: TextAlign.center,
      ),
      padding: EdgeInsets.fromLTRB(55, 79, 55,0),
    );
  }
}
