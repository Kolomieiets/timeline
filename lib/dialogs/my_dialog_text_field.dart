import 'package:flutter/material.dart';

class MyDialogTextField extends StatelessWidget {
  final _textController;
  final String _label;

  const MyDialogTextField(this._label, this._textController);

  // void _submitTask() {
  //   if (_nameController.text.isEmpty) {
  //     return;
  //   } else {
  //     final String taskName = _nameController.text;
  //     final String detailsName = _detailsController.text;
  //   }
  // }

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
