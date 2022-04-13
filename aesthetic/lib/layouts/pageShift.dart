import 'package:flutter/material.dart';

class PageShift extends StatefulWidget {
  const PageShift({Key? key}) : super(key: key);

  @override
  State<PageShift> createState() => _PageShiftState();
}

class _PageShiftState extends State<PageShift> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.cyan,
        )
      ],
    );
  }
}
