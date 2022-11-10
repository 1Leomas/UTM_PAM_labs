import 'package:flutter/material.dart';

import '../../../resources/images_assets.dart';

class ImageCardWidget extends StatefulWidget {
  const ImageCardWidget({Key? key, required this.cover}) : super(key: key);

  final String cover;

  @override
  State<ImageCardWidget> createState() => _ImageCardWidgetState();
}

class _ImageCardWidgetState extends State<ImageCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 144,
      decoration: BoxDecoration(
        //border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Image(image: NetworkImage(widget.cover),)
      //ImagesAssets.imageWorkout1,
    );
  }
}

