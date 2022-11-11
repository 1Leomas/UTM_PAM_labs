import 'package:fitness_app_flutter/presentation/home/controller/exercise_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'daily_exercise.dart';

class DailyExercisesList extends StatefulWidget {
  const DailyExercisesList({Key? key, required this.exercises})
      : super(key: key);

  final List<ExerciseItem> exercises;

  @override
  State<DailyExercisesList> createState() => _DailyExercisesListState();
}

class _DailyExercisesListState extends State<DailyExercisesList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      height: 386,
      //decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent),),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: widget.exercises.length,
              itemBuilder: (_, i) {
                var exercise = widget.exercises[i];
                return Column(
                  children: [
                    DailyExercise(exercise: exercise),
                    const SizedBox(height: 12),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
