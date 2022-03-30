import 'package:flutter/material.dart';

class RadioButtonz extends StatefulWidget {
  const RadioButtonz({Key? key}) : super(key: key);

  @override
  State<RadioButtonz> createState() => _RadioButtonzState();
}

class _RadioButtonzState extends State<RadioButtonz> {
  String? _person = "Rohit";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          ListTile(
            title: const Text("Rohit"),
            leading: Radio(
                value: "Rohit",
                groupValue: _person,
                onChanged: (String? value) {
                  setState(() {
                    _person = value;
                  });
                }),
          ),
          ListTile(
            title: const Text("notRohit"),
            leading: Radio(
                value: "notRohit",
                groupValue: _person,
                activeColor: Colors.amber,
                onChanged: (String? value) {
                  setState(() {
                    _person = value;
                  });
                }),
          ),
          Text(_person!)
        ],
      ),
    );
  }
}
