import 'package:flutter/material.dart';
import 'package:timeline/presentation/widgets/buttons/x_button.dart';

class MyDialogTitle extends StatelessWidget {
  const MyDialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Add new',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 100,
        ),
        XButton(),
      ],
    );
  }
}
