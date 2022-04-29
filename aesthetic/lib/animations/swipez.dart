import 'dart:math';

import 'package:aesthetic/animations/dm.dart';
import 'package:flutter/material.dart';

class Swipez extends StatefulWidget {
  const Swipez({Key? key}) : super(key: key);

  @override
  State<Swipez> createState() => _SwipezState();
}

class _SwipezState extends State<Swipez> {
  List<DataModel> dataList = [
    DataModel("Benedict", "assets/Bene.jpg"),
    DataModel("White Dog", "assets/dog.jpg"),
    DataModel("Not White Dog", "assets/dog1.jpg")
  ];

  Widget carouselView(int index) {
    return AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0.0;
          if (_pageController.position.haveDimensions) {
            value = index.toDouble() - (_pageController.page ?? 0);
            value = (value * 0.038).clamp(-1, 1);
          }
          return Transform.rotate(
            angle: pi * value,
            child: carouselCard(dataList[index]),
          );
        });
  }

  Widget carouselCard(DataModel data) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 400,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(data.loc), fit: BoxFit.fill)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(data.title)
        ],
      ),
    );
  }

  late PageController _pageController;
  int _curPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: _curPage, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carousel"),
      ),
      body: Container(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text("Swipe Images")),
            ),
            Container(
              color: Colors.transparent,
              height: 20,
            ),
            Expanded(
              child: PageView.builder(
                itemBuilder: ((context, index) {
                  return carouselView(index);
                }),
                itemCount: dataList.length,
                controller: _pageController,
                physics: const ClampingScrollPhysics(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
