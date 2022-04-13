import 'package:flutter/material.dart';

class NestedPage extends StatefulWidget {
  const NestedPage({Key? key}) : super(key: key);

  @override
  State<NestedPage> createState() => _NestedPageState();
}

class _NestedPageState extends State<NestedPage> {
  var colors = [Colors.green, Colors.blue, Colors.amber];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 50,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Container(
                  height: 20,
                  width: 20,
                  color: colors[index % 3],
                );
              }),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 5,
                );
              },
              itemCount: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: ListView.separated(
                itemBuilder: ((context, index) {
                  return Container(
                    height: 20,
                    width: 20,
                    color: colors[index % 3],
                    child: Center(child: Text("$index")),
                  );
                }),
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 30),
          ),
        )
      ],
    ));
  }
}
