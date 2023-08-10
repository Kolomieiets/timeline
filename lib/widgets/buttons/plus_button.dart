import 'package:flutter/material.dart';
import 'package:timeline/dialogs/my_dialog.dart';

class PlusButton extends StatelessWidget {
  final void Function() _changeHomeScreen;

  PlusButton(this._changeHomeScreen);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: const Color.fromRGBO(99, 149, 246, 1.0),
        onPressed: () => showDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) => MyDialog(_changeHomeScreen),
        ),
        child: const Icon(Icons.add),
      );
  }
}