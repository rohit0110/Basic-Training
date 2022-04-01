import 'package:flutter/material.dart';

class Scaffold2 extends StatefulWidget {
  const Scaffold2({Key? key}) : super(key: key);

  @override
  State<Scaffold2> createState() => _Scaffold2State();
}

class _Scaffold2State extends State<Scaffold2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Image Appbar"),
              background: Image.asset('assets/Bene.jpg'),
            ),
            pinned: true,
            backgroundColor: Colors.black,
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: [
                Container(
                  height: 700,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amber,
                  child: const Center(
                      child: Text("Scroll Up for image to appbar animation")),
                )
              ],
            ),
          ])),
        ],
      ),
      persistentFooterButtons: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.minimize)),
      ],
    );
  }
}
