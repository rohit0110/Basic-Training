import 'package:flutter/material.dart';

class ListViewz extends StatefulWidget {
  const ListViewz({Key? key}) : super(key: key);

  @override
  State<ListViewz> createState() => _ListViewzState();
}

class _ListViewzState extends State<ListViewz> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("$index"),
            tileColor: Colors.blue,
          );
        });
  }
}
