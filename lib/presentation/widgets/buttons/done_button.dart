import 'package:flutter/material.dart';
import 'package:timeline/resources/app_colors.dart';

class DoneButton extends StatelessWidget {

  final void Function() onTap;

  const DoneButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: AppColors.deepMain,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Icon(
          Icons.check,
          color: AppColors.secondary,
          size: 40.0,
        ),
      ),
    );
  }
}
