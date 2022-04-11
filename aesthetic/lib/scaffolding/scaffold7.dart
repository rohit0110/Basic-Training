import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';

class scaffold7 extends StatefulWidget {
  const scaffold7({Key? key}) : super(key: key);

  @override
  State<scaffold7> createState() => _scaffold7State();
}

class _scaffold7State extends State<scaffold7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Bottom Sheet")),
        body: ExpandableBottomSheet(
          expandableContent: Container(
            height: 200,
            color: Colors.amber,
          ),
          background: Container(color: Colors.transparent),
          persistentHeader: Container(
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            width: MediaQuery.of(context).size.width,
            child: const Center(child: Text("Expandable Sheet")),
            height: 40,
          ),
        ));
  }
}
