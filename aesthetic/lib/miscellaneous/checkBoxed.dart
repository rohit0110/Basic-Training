import 'package:flutter/material.dart';

class CheckeredBoxes extends StatefulWidget {
  const CheckeredBoxes({Key? key}) : super(key: key);

  @override
  State<CheckeredBoxes> createState() => _CheckeredBoxesState();
}

class _CheckeredBoxesState extends State<CheckeredBoxes> {
  bool value1 = false;
  bool value2 = false;
  Color colColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: colColor,
      child: Column(
        children: [
          CheckboxListTile(
              title: const Text("First Check Box (changes color to grey)"),
              value: value1,
              onChanged: (bool? value) {
                setState(() {
                  value1 = value ?? value1;
                  if (value1) {
                    colColor = Colors.grey;
                  } else {
                    colColor = Colors.transparent;
                  }
                });
              }),
          CheckboxListTile(
              activeColor: Colors.white,
              checkColor: Colors.green,
              title: const Text("Second Check Box (changes color to amber)"),
              value: value2,
              onChanged: (bool? value) {
                setState(() {
                  value2 = value ?? value2;
                  if (value2) {
                    colColor = Colors.amber;
                  } else {
                    colColor = Colors.transparent;
                  }
                });
              })
        ],
      ),
    );
  }
}
