import 'package:flutter/material.dart';
import 'package:timeline/dialogs/my_dialog_text_field.dart';
import 'package:timeline/dialogs/my_dialog_time_field.dart';
import 'package:timeline/dialogs/my_dialog_title.dart';
import 'package:timeline/resources/storage.dart';
import 'package:timeline/widgets/buttons/done_button.dart';

class MyDialog extends StatefulWidget {
  final void Function() _changeHomeScreen;

  const MyDialog(this._changeHomeScreen);

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  final _nameController = TextEditingController();
  final _detailsController = TextEditingController();
  final _timeController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _detailsController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  void addingCardInfo() {
    final Map<String, String> task = {
      'name': _nameController.text,
      'details': _detailsController.text,
      'time': _timeController.text,
    };

    MyStorage.tasks.add(task);
    widget._changeHomeScreen();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: AlignmentDirectional.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 16,
                bottom: 32,
              ),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const MyDialogTitle(),
                  MyDialogTextField('Task name', _nameController),
                  MyDialogTextField('Task details', _detailsController),
                  MyDialogTimeField('Time', _timeController),
                ],
              ),
            ),
            Positioned(
              bottom: 220.0,
              child: DoneButton(addingCardInfo),
            ),
          ],
        ),
      ),
    );
  }
}
