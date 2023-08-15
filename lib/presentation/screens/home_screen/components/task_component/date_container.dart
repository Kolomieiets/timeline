import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  final String date;
  const DateContainer({required this.date, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: 70,
      child: Text(
        date,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
