import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';

class scaffold6 extends StatefulWidget {
  const scaffold6({Key? key}) : super(key: key);

  @override
  State<scaffold6> createState() => _scaffold6State();
}

class _scaffold6State extends State<scaffold6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Sheet")),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    builder: (context) => Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: Center(
                            child: ElevatedButton(
                              child: const Text("Close Bottom Sheet"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ));
              },
              child: const Text("Open bottom Sheet")),
        ]),
      ),
    );
  }
}
