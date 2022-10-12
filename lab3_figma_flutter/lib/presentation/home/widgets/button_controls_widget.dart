import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';

class ButtonControlsWidget extends StatefulWidget {
  @override
  State<ButtonControlsWidget> createState() => _ButtonControlsWidgetState();
}

class _ButtonControlsWidgetState extends State<ButtonControlsWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      //iconSize: 90,
      //splashRadius: 80,
      onPressed: () {

      },
      icon: const Icon(Icons.add),
      color: CustomColors.white,
    );
  }
}
