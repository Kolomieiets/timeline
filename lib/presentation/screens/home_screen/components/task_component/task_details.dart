import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  final String title;
  final String details;
  const TaskDetails({required this.details, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              overflow: TextOverflow.visible,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            details,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8.0),
          const Divider(height: 5.0,),
        ],
      ),
    );
  }
}
