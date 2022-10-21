import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/build_time.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/button_controls_widget.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_controller.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_widget.dart';
import 'package:lab3_figma_flutter/resources/custom_colors.dart';
import 'widgets/home_title_widget.dart';

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Get.put(InputTimeController());
  }

  @override
  Widget build(BuildContext context) {

    InputTimeController controller = Get.find();

    return Scaffold(
        backgroundColor: CustomColors.awesome,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 79),
                HomeTitleWidget(),
                const SizedBox(height: 240),
                SizedBox(
                  height: 92,
                  child:  Obx(() {
                    if(controller.buttonState.isFalse) {
                      return InputTimeWidget();
                    } else {
                      return BuildTime();
                    }
                  }),
                ),
                const SizedBox(height: 205),
                ButtonControlWidget(),
              ],
            ),
          )
        )
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
