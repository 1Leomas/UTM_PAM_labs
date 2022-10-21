import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class InputTimeController extends GetxController {
  var hoursController = TextEditingController();
  var minutesController = TextEditingController();
  var secondsController = TextEditingController();

  final hours = 0.obs;
  final minutes = 0.obs;
  final seconds = 0.obs;

  final buttonState = false.obs;

  //final VoidCallback onClicked;

  changeButtonSate() {
    buttonState(!(buttonState.value));
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

  var duration = Duration().obs;
  int totalDuration = 0;
  Timer? timer;

  final sHours = "".obs;
  final sMinutes = "".obs;
  final sSeconds = "".obs;

  void changeTime() {
    if(duration.value.inSeconds > 0) {
      final seconds = duration.value.inSeconds - 1;
      duration.value = Duration(seconds: seconds);
      update();
    } else {
      stopTimer(restart: false);
      resetTimer();
    }
  }

  void stopTimer({bool restart = true}) {
    if(restart) {
      resetTimer();
      update();
    }
    timer?.cancel();
    update();
  }

  void startTimer({bool restart = true}) {
    if(restart) {
      resetTimer();
      update();
    }
    timer = Timer.periodic( const Duration(seconds: 1), (_) => changeTime());
  }

  void resetTimer() {
    duration.value = Duration(hours: hours.value, minutes: minutes.value, seconds: seconds.value);
    totalDuration = duration.value.inSeconds;
    update();
  }

  bool isTimerRuning() {
    return timer == null ? false : timer!.isActive;
  }

  bool isCompleted() {
    return duration.value == totalDuration || duration.value.inSeconds == 0;
  }

}