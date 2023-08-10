import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateGenerator extends StatelessWidget {
  List<DateTime> days = [];

  DateGenerator(this.days);

  List<Widget> dateRow(List<DateTime> date) {
    List<Widget> containers = [];

    for (int i = date.length - 1; i >= 0; --i) {
      containers.add(
        Column(
          children: [
            Text(
              DateFormat.E().format(date[i]),
              style: const TextStyle(
                color: Colors.white,
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
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Text(
                  date[i].day.toString(),
                  style: TextStyle(
                    color: DateTime.now().weekday == date[i].weekday
                        ? const Color.fromRGBO(99, 149, 246, 1.0)
                        : Colors.white,
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

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: dateRow(days),
    );
  }
}
