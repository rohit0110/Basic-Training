import 'package:flutter/material.dart';

class TextButtonz extends StatefulWidget {
  const TextButtonz({Key? key}) : super(key: key);

  @override
  State<TextButtonz> createState() => _TextButtonzState();
}

class _TextButtonzState extends State<TextButtonz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Text Button",
          style: TextStyle(color: Colors.black),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)),
      ),
    );
  }
}
