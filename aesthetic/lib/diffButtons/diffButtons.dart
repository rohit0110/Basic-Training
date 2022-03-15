import 'package:aesthetic/diffButtons/textButton.dart';
import 'package:flutter/material.dart';

class DiffButtons extends StatefulWidget {
  const DiffButtons({Key? key}) : super(key: key);

  @override
  State<DiffButtons> createState() => _DiffButtonsState();
}

class _DiffButtonsState extends State<DiffButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons Page")),
      body: Container(
        child: Column(
          children: [TextButtonz()],
        ),
      ),
    );
  }
}
