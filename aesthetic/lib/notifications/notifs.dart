import 'package:flutter/material.dart';

class Notifs extends StatefulWidget {
  const Notifs({Key? key}) : super(key: key);

  @override
  State<Notifs> createState() => _NotifsState();
}

class _NotifsState extends State<Notifs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications Page"),
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Center(
          child: Column(
            children: [
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: const Text(
                        "Snackbar appeared",
                        style: TextStyle(color: Colors.black),
                      ),
                      backgroundColor: Colors.amber,
                      action: SnackBarAction(label: "Undo", onPressed: () {}),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("Show Snackbar")),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              //shape: const CircleBorder(side: BorderSide.none),

                              title: const Text("Alert Dialoge button"),
                              content: SingleChildScrollView(
                                child: ListBody(children: const [
                                  Text("Just a demo alert dialog"),
                                  Text("Approve message?")
                                ]),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text("Approve"))
                              ],
                              actionsAlignment: MainAxisAlignment.center,
                              backgroundColor: Colors.amber,
                            ));
                  },
                  child: const Text("Show AlertDialog")),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => SimpleDialog(
                              backgroundColor: Colors.amber,
                              contentPadding: const EdgeInsets.all(20),
                              title: const Text('Select one option'),
                              children: [
                                SimpleDialogOption(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("option 1"),
                                ),
                                SimpleDialogOption(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("option 2"),
                                ),
                              ],
                            ));
                  },
                  child: const Text("Show SimpleDialog")),
            ],
          ),
        ),
      ),
    );
  }
}
