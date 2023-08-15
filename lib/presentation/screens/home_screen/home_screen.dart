import 'package:flutter/material.dart';
import 'package:timeline/presentation/screens/home_screen/components/weekday_components/week_container.dart';
import 'package:timeline/presentation/screens/home_screen/components/task_component/schedule_list.dart';
import 'package:timeline/resources/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('timeline'),
        centerTitle: true,
        backgroundColor: AppColors.main,
        elevation: 0,
      ),
      body: const Stack(
        alignment: AlignmentDirectional.topCenter,
        clipBehavior: Clip.none,
        children: <Widget>[
          WeekContainer(),
          Positioned(
            top: 100,
            child: ScheduleList(),
          ),
        ],
      ),
    );
  }
}
