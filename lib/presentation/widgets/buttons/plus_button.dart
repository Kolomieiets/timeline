import 'package:flutter/material.dart';
import 'package:timeline/presentation/dialogs/task_dialog/my_dialog.dart';
import 'package:timeline/resources/app_colors.dart';

class PlusButton extends StatelessWidget {
  final void Function() onTap;

  const PlusButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: AppColors.deepMain,
        onPressed: () => showDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) => MyDialog(onTap),
        ),
        child: const Icon(Icons.add),
      );
  }
}