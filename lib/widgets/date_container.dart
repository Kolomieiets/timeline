import 'package:flutter/material.dart';
import 'package:timeline/widgets/date_generator.dart';

class DateContainer extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            Container(
              height: 200.0,
              padding: const EdgeInsets.only(top: 10.0),
              // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(156, 186, 255, 1.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: DateGenerator(dateList()),
            ),
            SizedBox(height: constraints.maxHeight - 200.0,)
          ],
        );
      }
    );
  }
}
