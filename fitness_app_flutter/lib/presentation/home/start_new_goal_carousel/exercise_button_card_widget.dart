import 'package:flutter/material.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/svg_assets.dart';

class ExerciseButtonCardWidget extends StatelessWidget {
  //const ExerciseCardButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 230.0,
        top: 118.0,
        right: 20
      ),
      //padding: const EdgeInsets.all(8.0),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        //color: CustomColors.white,
        //border: Border.all(color: CustomColors.cultured),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.24),
            spreadRadius: 2,
            blurRadius: 24,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: FloatingActionButton(
        backgroundColor: CustomColors.cultured,
        onPressed: () {  },
        child: SvgAssets.iconPlay,
      )
    );
  }
}
