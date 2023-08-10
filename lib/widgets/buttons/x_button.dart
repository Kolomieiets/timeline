import 'package:flutter/material.dart';

class XButton extends StatelessWidget {
  const XButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(235, 142, 185, 1.0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(Icons.close, color: Colors.white),
      ),
      onTap: () => Navigator.of(context).pop(),
    );
  }
}
