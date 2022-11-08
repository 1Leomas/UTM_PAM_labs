import 'package:flutter/material.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/strings.dart';
import '../../../resources/text_styles.dart';

class TitleDescriptionWidget extends StatelessWidget {
  //const TitleDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.bodyBuilding,
            style: TextStyles.poppins24(),
          ),
          const SizedBox(height: 4),
          Text(
            Strings.fullBodyWorkout,
            style: TextStyles.poppins14(color: CustomColors.spanishGray, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
