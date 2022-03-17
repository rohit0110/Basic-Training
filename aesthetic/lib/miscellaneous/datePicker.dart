import 'package:flutter/material.dart';

class DatePickerz extends StatefulWidget {
  const DatePickerz({Key? key}) : super(key: key);

  @override
  State<DatePickerz> createState() => _DatePickerzState();
}

class _DatePickerzState extends State<DatePickerz> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        child: ElevatedButton(
          child: const Text("Choose Date"),
          onPressed: () {
            _selectDate(context);
          },
        ));
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2030));
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
  }
}
