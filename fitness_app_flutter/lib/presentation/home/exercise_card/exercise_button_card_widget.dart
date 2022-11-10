import 'package:flutter/material.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/svg_assets.dart';

class ExerciseButtonCardWidget extends StatelessWidget {
  //const ExerciseCardButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 246.0,
        top: 124.0,
        right: 20
      ),
      height: 40,
      width: 40,
      child: FloatingActionButton(
        elevation: 1,
        backgroundColor: CustomColors.cultured,
        onPressed: () {  },
        child: SvgAssets.iconPlay,
      )
    );
  }
}
