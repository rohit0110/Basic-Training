import 'dart:convert';

import 'package:aesthetic/networking/user.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioPage extends StatefulWidget {
  const DioPage({Key? key}) : super(key: key);

  @override
  State<DioPage> createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  late List<User> Users;

  Future<List<User>> getData() async {
    var dio = Dio();
    var response = await dio.get('https://jsonplaceholder.typicode.com/users');
    //print(response.data);
    List<User> users = [];
    for (var u in response.data) {
      User user = User(u['name'], u['email'], u['username']);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dio example")),
      body: Card(
        child: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Text("Loading");
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data[index].name),
                      );
                    });
              }
            }),
      ),
    );
  }
}
