import 'package:flutter/material.dart';
import 'package:timeline/presentation/screens/home_screen/components/task_component/tasks_list.dart';
import 'package:timeline/resources/app_colors.dart';

class ScheduleList extends StatelessWidget {
  const ScheduleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 600,
      width: 350,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            spreadRadius: 4,
            blurRadius: 6,
          ),
        ],
      ),
      child: const TasksList(),
    );
  }
}
