import 'package:flutter/material.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/button_controls_widget.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_widget.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'package:lab3_figma_flutter/resources/strings.dart';
import 'package:lab3_figma_flutter/resources/text_styles.dart';
import 'widgets/home_title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

String someText = "123";

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.awesome,
        body: Flex(
          direction: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 79, 0, 0),
              child: HomeTitleWidget(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 228, 0, 200),
              child: InputTimeWidget(),
            ),
            Material(
              type: MaterialType.circle,
              color: CustomColors.fieryRose,
              child: ButtonControlsWidget(),
            ),
          ],
        )
    );
  }
}
