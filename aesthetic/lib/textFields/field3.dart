import 'package:flutter/material.dart';

class Field3 extends StatefulWidget {
  const Field3({Key? key}) : super(key: key);

  @override
  State<Field3> createState() => _Field3State();
}

class _Field3State extends State<Field3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const TextField(
        decoration: InputDecoration(
            icon: Icon(Icons.star),
            helperText: "Name",
            hintText: "Icon&helper"),
      ),
    );
  }
}
