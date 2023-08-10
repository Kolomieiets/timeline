import 'package:flutter/material.dart';
import 'package:timeline/resources/storage.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: ScrollPhysics(),
      itemCount: MyStorage.tasks.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            // Row(
            //   children: [
            //     Container(
            //       width: 350,
            //       color: Colors.blue,
            //       child: const Text('Progress indicator'),
            //     ),
            //   ],
            // ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  child: Text(
                    MyStorage.tasks[index]['time']!,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyStorage.tasks[index]['name']!,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      MyStorage.tasks[index]['details']!,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 110,
                ),
                Container(
                  height: 2,
                  width: 230,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(239, 239, 239, 1.0),
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
