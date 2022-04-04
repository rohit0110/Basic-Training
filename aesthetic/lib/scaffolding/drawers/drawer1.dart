import 'package:flutter/material.dart';

class Drawer1 extends StatefulWidget {
  const Drawer1({Key? key}) : super(key: key);

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.lightBlue, Colors.limeAccent])),
                child: Text("USER")),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Inbox"),
              focusColor: Colors.amber,
            )
          ]),
    );
  }
}
