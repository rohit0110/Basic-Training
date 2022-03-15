import 'package:flutter/material.dart';

class Field1 extends StatefulWidget {
  const Field1({Key? key}) : super(key: key);

  @override
  State<Field1> createState() => _Field1State();
}

class _Field1State extends State<Field1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: "Outline Input Border"),
      ),
    );
  }
}
