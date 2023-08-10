import 'package:flutter/material.dart';

class MyDialogTimeField extends StatelessWidget {
  final _textController;
  final String _label;
  
  const MyDialogTimeField(this._label, this._textController);

  void _presentTimePicker(BuildContext context) async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (time != null) {
      // ignore: use_build_context_synchronously
      _textController.text = time.format(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          decoration: InputDecoration(
            label: Text(_label),
          ),
          controller: _textController,
        ),
        InkWell(
          child: SizedBox(
            height: 60,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          onTap: () => _presentTimePicker(context),
        ),
      ],
    );
  }
}
