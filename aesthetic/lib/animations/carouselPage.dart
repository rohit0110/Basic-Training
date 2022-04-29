import 'package:aesthetic/animations/dm.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({Key? key}) : super(key: key);

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  List<DataModel> dataList = [
    DataModel("Benedict", "assets/Bene.jpg"),
    DataModel("White Dog", "assets/dog.jpg"),
    DataModel("Not White Dog", "assets/dog1.jpg")
  ];

  Widget carouselCard(DataModel data) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(data.loc), fit: BoxFit.fill)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(data.title),
        ],
      ),
    );
  }

  int activeIndex = 0;

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
        activeIndex: activeIndex, count: dataList.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("carousel Package")),
      body: Column(
        children: [
          const Text("Automatic Swiper?"),
          CarouselSlider(
              items: dataList.map((e) => carouselCard(e)).toList(),
              options: CarouselOptions(
                  height: 550,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  })),
          buildIndicator()
        ],
      ),
    );
  }
}
