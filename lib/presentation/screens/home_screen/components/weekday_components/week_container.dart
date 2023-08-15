import 'package:flutter/material.dart';
import 'package:timeline/presentation/screens/home_screen/components/weekday_components/date_generator.dart';
import 'package:timeline/resources/app_colors.dart';

class WeekContainer extends StatelessWidget {
  const WeekContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200.0,
          padding: const EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
            color: AppColors.main,
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow,
                spreadRadius: 3,
                blurRadius: 5,
              ),
            ],
          ),
          child: const DateGenerator(),
        ),
      ],
    );
  }


}
