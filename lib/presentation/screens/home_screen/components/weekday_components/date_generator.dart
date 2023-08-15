import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeline/resources/app_colors.dart';

class DateGenerator extends StatelessWidget {
  const DateGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: dateRow(dateList()),
    );
  }

  List<DateTime> dateList() {
    List<DateTime> date = [];
    for (int i = -2; i < 3; ++i) {
      DateTime dateCount = DateTime.now().subtract(
        Duration(days: i),
      );
      date.add(dateCount);
    }
    return date;
  }

  List<Widget> dateRow(List<DateTime> date) {
    List<Widget> containers = [];

    for (int i = date.length - 1; i >= 0; --i) {
      containers.add(
        Column(
          children: [
            Text(
              DateFormat.E().format(date[i]),
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: DateTime.now().day == date[i].day
                        ? AppColors.secondary
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Text(
                  date[i].day.toString(),
                  style: TextStyle(
                    color: DateTime.now().weekday == date[i].weekday
                        ? AppColors.main
                        : AppColors.secondary,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }
    return containers;
  }
}
