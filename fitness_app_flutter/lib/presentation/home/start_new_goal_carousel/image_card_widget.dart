import 'package:flutter/material.dart';

import '../../../resources/images_assets.dart';

class ImageCardWidget extends StatelessWidget {
  //const ImageCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      margin: const EdgeInsets.all(0.0),
      width: 310,
      //height: 110,
      decoration: BoxDecoration(
        //image: DecorationImage(image: ImagesAssets.imageWorkout1.image),
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(24),
      ),
      child: ImagesAssets.imageWorkout1,
    );
  }
}
