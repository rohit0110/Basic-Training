import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class Scaffold4 extends StatefulWidget {
  const Scaffold4({Key? key}) : super(key: key);

  @override
  State<Scaffold4> createState() => _Scaffold4State();
}

class _Scaffold4State extends State<Scaffold4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SliderDrawer(
            appBar: const SliderAppBar(title: Text("Slider Drawer")),
            slider: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.amber,
              child: const Center(child: Text("WOOSH!")),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: const Center(
                child: Text(
                  "Container text",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )));
  }
}
