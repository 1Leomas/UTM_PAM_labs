import 'package:flutter/material.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'widgets/home_title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: CustomColors.awesome,
        child: ListView(
          children: [
            HomeTitleWidget()
          ],
        ),
      )
    );
  }
}
