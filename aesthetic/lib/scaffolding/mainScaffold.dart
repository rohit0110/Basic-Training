import 'package:aesthetic/scaffolding/scaffold1.dart';
import 'package:aesthetic/scaffolding/scaffold2.dart';
import 'package:aesthetic/scaffolding/scaffold3.dart';
import 'package:aesthetic/scaffolding/scaffold4.dart';
import 'package:aesthetic/scaffolding/scaffold5.dart';
import 'package:aesthetic/scaffolding/scaffold6.dart';
import 'package:aesthetic/scaffolding/scaffold7.dart';
import 'package:flutter/material.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({Key? key}) : super(key: key);

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Exploring Scaffolds")),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Scaffold1())));
                  },
                  child: const Text("Scaffold Example 1")),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Scaffold2()));
                  },
                  child: const Text("Scaffold Example 2")),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Scaffold3())));
                  },
                  child: const Text("Scaffold Example 3")),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Scaffold4())));
                  },
                  child: const Text("Scaffold Example 4")),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Scaffold5())));
                  },
                  child: const Text("Scaffold Example 5")),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const scaffold6())));
                  },
                  child: const Text("Scaffold Example 6")),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const scaffold7())));
                  },
                  child: const Text("Scaffold Example 7")),
            ],
          ),
        ));
  }
}
