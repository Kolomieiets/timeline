import 'package:flutter/material.dart';
import 'package:timeline/presentation/screens/home_screen/components/task_component/date_container.dart';
import 'package:timeline/presentation/screens/home_screen/components/task_component/task_details.dart';
import 'package:timeline/presentation/widgets/buttons/plus_button.dart';
import 'package:timeline/resources/app_colors.dart';
import 'package:timeline/resources/storage.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        ListView.builder(
            itemCount: MyStorage.tasks.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  DateContainer(
                    date: MyStorage.tasks[index]['time']!,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: AppColors.accent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TaskDetails(
                    details: MyStorage.tasks[index]['details']!,
                    title: MyStorage.tasks[index]['name']!,
                  ),
                ],
              );
            }),
        Positioned(
          bottom: -25,
          child: PlusButton(
            onTap: () {
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
