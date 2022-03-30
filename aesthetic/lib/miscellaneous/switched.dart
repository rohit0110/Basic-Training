import 'package:flutter/material.dart';

class Switched extends StatefulWidget {
  const Switched({Key? key}) : super(key: key);

  @override
  State<Switched> createState() => _SwitchedState();
}

class _SwitchedState extends State<Switched> {
  bool _switchVal = false;
  Color _containColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: _containColor,
      constraints: const BoxConstraints.expand(height: 100),
      padding: const EdgeInsets.all(20),
      child: Switch(
          value: _switchVal,
          activeColor: const Color.fromARGB(255, 255, 17, 0),
          thumbColor: MaterialStateProperty.all(Colors.black),
          onChanged: (bool val) {
            setState(() {
              _switchVal = val;
              _containColor = _switchVal ? Colors.grey : Colors.transparent;
            });
          }),
    );
  }
}
