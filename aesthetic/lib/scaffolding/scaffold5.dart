import 'package:aesthetic/scaffolding/scaffold2.dart';
import 'package:aesthetic/scaffolding/scaffold3.dart';
import 'package:flutter/material.dart';

class Scaffold5 extends StatefulWidget {
  const Scaffold5({Key? key}) : super(key: key);

  @override
  State<Scaffold5> createState() => _Scaffold5State();
}

class _Scaffold5State extends State<Scaffold5> {
  int currentIndex = 0;
  final screens = const [Scaffold2(), Scaffold3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.delete),
              label: "Delete",
              backgroundColor: Colors.red)
        ],
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
      ),
    );
  }
}
