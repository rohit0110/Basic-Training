import 'package:flutter/material.dart';

class Scaffold1 extends StatefulWidget {
  const Scaffold1({Key? key}) : super(key: key);

  @override
  State<Scaffold1> createState() => _Scaffold1State();
}

class _Scaffold1State extends State<Scaffold1> {
  Color _color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            floating: true,
            snap: true,
            title: Text("Show Appbar on scroll Up"),
          )
        ],
        body: ListView.separated(
            padding: const EdgeInsets.all(12),
            itemBuilder: (context, index) => ListTile(
                  tileColor: _color,
                  title: Text(index.toString()),
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 12,
                ),
            itemCount: 20),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _color = _color == Colors.transparent
                ? Colors.amber
                : Colors.transparent;
          });
        },
        child: const Icon(Icons.colorize),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
