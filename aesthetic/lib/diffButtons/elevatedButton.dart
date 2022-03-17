import 'package:flutter/material.dart';

class ElevatedButtonz extends StatefulWidget {
  const ElevatedButtonz({Key? key}) : super(key: key);

  @override
  State<ElevatedButtonz> createState() => _ElevatedButtonzState();
}

class _ElevatedButtonzState extends State<ElevatedButtonz> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Press me For no reason at all"),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
              foregroundColor: MaterialStateProperty.all(Colors.amber)),
        ));
  }
}
