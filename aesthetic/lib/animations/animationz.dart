import 'dart:math';

import 'package:flutter/material.dart';

class Animationz extends StatefulWidget {
  const Animationz({Key? key}) : super(key: key);

  @override
  State<Animationz> createState() => _AnimationzState();
}

class _AnimationzState extends State<Animationz>
    with SingleTickerProviderStateMixin {
  double _width = 200;
  double _height = 200;
  Curve _curves = Curves.bounceOut;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateState() {
    setState(() {
      if (_height == 200) {
        _height = 400;
        _width = 400;
        _curves = Curves.bounceOut;
      } else {
        _height = 200;
        _width = 200;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animations")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                curve: _curves,
                color: Colors.amber,
                height: _height,
                width: _width,
                child: const Center(
                  child: Text("AnimatedContainer"),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  _updateState();
                },
                child: const Text("Animate Above")),
            const SizedBox(
              height: 20,
            ),
            AnimatedBuilder(
              animation: _controller.view,
              builder: (context, child) {
                return Transform.rotate(
                  angle: 2 * pi * _controller.value,
                  child: child,
                );
              },
              child: Container(
                color: Colors.amber,
                height: 200,
                width: 200,
                child: const Text("With AnimateBuilder"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
