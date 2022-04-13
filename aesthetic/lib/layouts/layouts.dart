import 'package:aesthetic/layouts/listViewz.dart';
import 'package:aesthetic/layouts/nestedPage.dart';
import 'package:aesthetic/layouts/pageShift.dart';
import 'package:flutter/material.dart';

class Layouts extends StatefulWidget {
  const Layouts({Key? key}) : super(key: key);

  @override
  State<Layouts> createState() => _LayoutsState();
}

class _LayoutsState extends State<Layouts> {
  final screens = const [PageShift(), ListViewz(), NestedPage()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Different Layouts")),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.view_headline),
              label: "Page",
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.format_size),
              label: "ListView",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.format_line_spacing),
              label: "CustomScroll",
              backgroundColor: Colors.green)
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
