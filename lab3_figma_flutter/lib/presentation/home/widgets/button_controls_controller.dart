import 'package:get/get.dart';

class ButtonControlsController extends GetxController {
  bool isPressed = false;

  bool get buttonState{
    return isPressed;
  }

  set buttonState(bool state) {
    isPressed = state;
  }

}