import 'package:aesthetic/scaffolding/drawers/drawer1.dart';
import 'package:flutter/material.dart';

class Scaffold3 extends StatefulWidget {
  const Scaffold3({Key? key}) : super(key: key);

  @override
  State<Scaffold3> createState() => _Scaffold3State();
}

class _Scaffold3State extends State<Scaffold3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Drawer Experiments"),
        ),
        body: Container(
          color: Colors.black,
          child: const Center(
              child: Text(
            "ABCDEF",
            style: TextStyle(color: Colors.white),
          )),
        ),
        drawer: const Drawer1());
  }
}
