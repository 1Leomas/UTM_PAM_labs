import 'package:flutter/material.dart';

import '../../../resources/images_assets.dart';

class ImageCardWidget extends StatefulWidget {
  //const ImageCardWidget({Key? key}) : super(key: key);

  @override
  State<ImageCardWidget> createState() => _ImageCardWidgetState();
}

class _ImageCardWidgetState extends State<ImageCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(24),
      ),
      child: ImagesAssets.imageWorkout1,
    );
  }
}

