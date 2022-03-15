import 'package:flutter/material.dart';

class Field4 extends StatefulWidget {
  const Field4({Key? key}) : super(key: key);

  @override
  State<Field4> createState() => _Field4State();
}

class _Field4State extends State<Field4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const TextField(
        decoration: InputDecoration(
            icon: Icon(Icons.person), labelText: "Name", hintText: "label"),
      ),
    );
  }
}
