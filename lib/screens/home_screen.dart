import 'package:flutter/material.dart';
import 'package:timeline/widgets/buttons/plus_button.dart';
import 'package:timeline/widgets/date_container.dart';
import 'package:timeline/widgets/schedule_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _changeHomeScreen() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('timeline'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(156, 186, 255, 1.0),
        elevation: 0,
      ),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        clipBehavior: Clip.none,
        children: <Widget>[
          DateContainer(),
          Positioned(
            top: 100,
            child: ScheduleList(),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PlusButton(_changeHomeScreen),
    );
  }
}
