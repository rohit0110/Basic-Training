import 'package:aesthetic/textFields/field1.dart';
import 'package:aesthetic/textFields/field2.dart';
import 'package:aesthetic/textFields/field3.dart';
import 'package:aesthetic/textFields/field4.dart';
import 'package:aesthetic/textFields/field5.dart';
import 'package:aesthetic/textFields/field6.dart';
import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Text Fields Decoration"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Field1(),
              const Field2(),
              const Field3(),
              const Field4(),
              const Field5(),
              const Field6()
            ],
          ),
        ));
  }
}
