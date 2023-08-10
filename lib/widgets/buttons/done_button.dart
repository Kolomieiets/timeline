import 'package:flutter/material.dart';

class DoneButton extends StatelessWidget {

  final void Function() info;

  const DoneButton(this.info);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: info,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(99, 149, 246, 1.0),
          borderRadius: BorderRadius.circular(60),
        ),
        child: const Icon(
          Icons.check,
          color: Colors.white,
          size: 40.0,
        ),
      ),
    );
  }
}
