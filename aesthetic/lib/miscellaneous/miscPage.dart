import 'package:aesthetic/miscellaneous/checkBoxed.dart';
import 'package:aesthetic/miscellaneous/datePicker.dart';
import 'package:flutter/material.dart';

class MiscPage extends StatefulWidget {
  const MiscPage({Key? key}) : super(key: key);

  @override
  State<MiscPage> createState() => _MiscPageState();
}

class _MiscPageState extends State<MiscPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Miscellaneous Inputs")),
      body: SingleChildScrollView(
        child: Column(children: [DatePickerz(), CheckeredBoxes()]),
      ),
    );
  }
}
