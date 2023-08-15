import 'package:flutter/material.dart';

class MyDialogTextField extends StatelessWidget {
  final TextEditingController _textController;
  final String _label;

  const MyDialogTextField(this._label, this._textController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        decoration: InputDecoration(
          label: Text(_label),
        ),
        controller: _textController,
      ),
    ]);
  }
}
