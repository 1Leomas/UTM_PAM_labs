import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/button_controls_widget.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_contreller.dart';
import 'package:lab3_figma_flutter/presentation/home/widgets/input_time_box/input_time_widget.dart';
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
Duration duration = Duration();
bool btnPresed = false;

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
          child: Column(
            children: [
              const SizedBox(height: 79),
              HomeTitleWidget(),
              const SizedBox(height: 240),
              InputTimeWidget(),
              const SizedBox(height: 205),
              Material(
                elevation: 0,
                type: MaterialType.circle,
                color: CustomColors.fieryRose,
                child: ButtonControlWidget(),
              ),
              Obx(() {
                if(controller.buttonIsPressed.value) {
                  return Material(
                    type: MaterialType.transparency,
                    child: Row(
                      children: [
                        Text(controller.hours.toString()),
                        const SizedBox(width: 8,),
                        Text(controller.minutes.toString()),
                        const SizedBox(width: 8,),
                        Text(controller.seconds.toString()),
                      ],
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              }),
            ],
          ),
        )
    );
  }
}