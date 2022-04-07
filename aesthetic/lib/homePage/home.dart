import 'package:aesthetic/diffButtons/diffButtons.dart';
import 'package:aesthetic/miscellaneous/miscPage.dart';
import 'package:aesthetic/notifications/notifs.dart';
import 'package:aesthetic/scaffolding/mainScaffold.dart';
import 'package:aesthetic/textFields/textFields.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Training")),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.amber),
            margin: const EdgeInsets.all(20),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextFields()));
              },
              icon: const Icon(Icons.text_fields),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.amber),
            margin: const EdgeInsets.all(20),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DiffButtons()));
              },
              icon: const Icon(Icons.radio_button_on_outlined),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.amber),
            margin: const EdgeInsets.all(20),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MiscPage()));
              },
              icon: const Icon(Icons.calendar_month),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.amber),
            margin: const EdgeInsets.all(20),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScaffold()));
                },
                icon: const Icon(Icons.construction)),
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.amber),
              margin: const EdgeInsets.all(20),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Notifs()));
                  },
                  icon: const Icon(Icons.notifications))),
        ],
      ),
    );
  }
}
