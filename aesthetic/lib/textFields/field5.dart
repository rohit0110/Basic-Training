import 'package:flutter/material.dart';

class Field5 extends StatefulWidget {
  const Field5({Key? key}) : super(key: key);

  @override
  State<Field5> createState() => _Field5State();
}

class _Field5State extends State<Field5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: "BorderRadius&Filled",
            filled: true,
            fillColor: Colors.blue.shade100),
      ),
    );
  }
}
