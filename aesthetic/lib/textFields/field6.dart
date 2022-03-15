import 'package:flutter/material.dart';

class Field6 extends StatefulWidget {
  const Field6({Key? key}) : super(key: key);

  @override
  State<Field6> createState() => _Field6State();
}

class _Field6State extends State<Field6> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "ContentPadding",
            filled: true,
            labelText: "Label",
            contentPadding: EdgeInsets.all(30)),
      ),
    );
  }
}
