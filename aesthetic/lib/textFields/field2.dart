import 'package:flutter/material.dart';

class Field2 extends StatefulWidget {
  const Field2({Key? key}) : super(key: key);

  @override
  State<Field2> createState() => _Field2State();
}

class _Field2State extends State<Field2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const TextField(
        decoration: InputDecoration(hintText: "No decoration"),
      ),
    );
  }
}
