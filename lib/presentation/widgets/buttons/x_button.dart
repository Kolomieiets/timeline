import 'package:flutter/material.dart';
import 'package:timeline/resources/app_colors.dart';

class XButton extends StatelessWidget {
  const XButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: AppColors.lightAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          Icons.close,
          color: AppColors.secondary,
        ),
      ),
      onTap: () => Navigator.of(context).pop(),
    );
  }
}
