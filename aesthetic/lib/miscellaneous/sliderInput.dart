import 'package:flutter/material.dart';

class SliderInput extends StatefulWidget {
  const SliderInput({Key? key}) : super(key: key);

  @override
  State<SliderInput> createState() => _SliderInputState();
}

class _SliderInputState extends State<SliderInput> {
  double _curVal = 20;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Slider(
              value: _curVal,
              max: 100,
              divisions: 10,
              activeColor: Colors.amber,
              inactiveColor: Colors.blue,
              thumbColor: Colors.black,
              label: "Slider Implement",
              onChanged: (double value) {
                setState(() {
                  _curVal = value;
                });
              }),
          Text(
            _curVal.toString(),
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
