import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../resources/files.dart';
import '../models/fitness_response.dart';
import 'goal_item.dart';

class HomeController extends GetxController{
  RxList<GoalItem> goalItems = RxList();

  void readJsonFile() async {
    String jsonString = await rootBundle.loadString(Files.jsonFilePath);
    var map = jsonDecode(jsonString);
    var response = FitnessResponse.fromJson(map);

    print('---- response: ${response.goals.length}');

    /*goalItems.value = response.goals
      .map((e) => GoalItem(
        cover: e.cover,
        title: e.title,
        subTitle: e.subTitle,
        caloriesCount: e.caloriesCount,
        durationSeconds: e.durationSeconds))
    .toList();*/
  }
}