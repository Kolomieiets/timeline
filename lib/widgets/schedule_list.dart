import 'package:flutter/material.dart';
import 'package:timeline/widgets/tasks_list.dart';

class ScheduleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 6,
          ),
        ],
      ),
      child: TasksList(),
    );
  }
}
