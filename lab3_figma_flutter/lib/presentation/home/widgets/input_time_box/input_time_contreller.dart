import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class InputTimeController extends GetxController {
  var hoursController = TextEditingController();
  var minutesController = TextEditingController();
  var secondsController = TextEditingController();

  final hours = 0.obs;
  final minutes = 0.obs;
  final seconds = 0.obs;

  final buttonIsPressed = false.obs;

  changeButtonSate() {
    buttonIsPressed(!(buttonIsPressed.value));
  }

  updateHours(int h) {
    hours(h);
  }
  updateMinutes(int m) {
    minutes(m);
  }
  updateSeconds(int s) {
    seconds(s);
  }
}