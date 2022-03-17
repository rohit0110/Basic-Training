import 'package:flutter/material.dart';

class IconButtonz extends StatefulWidget {
  const IconButtonz({Key? key}) : super(key: key);

  @override
  State<IconButtonz> createState() => _IconButtonzState();
}

class _IconButtonzState extends State<IconButtonz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      child: IconButton(
          splashColor: Colors.black,
          focusColor: Colors.red, //?
          highlightColor: Colors.red,
          splashRadius: 40,
          onPressed: () {},
          icon: const Icon(Icons.air)),
    );
  }
}
