import 'package:aesthetic/stateman/todoModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do list"),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Column(
              children: const [
                Text(
                  "THIS IS A TO DO LIST SCAFFOLD",
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
                Text(
                  "to test out provider",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(30, 30),
                            topRight: Radius.elliptical(30, 30))),
                    child: Consumer<TodoModel>(
                      builder: (context, todo, child) {
                        return ListView.builder(
                            itemCount: todo.taskList.length,
                            itemBuilder: ((context, index) {
                              return Container(
                                padding: const EdgeInsets.all(20),
                                child: ListTile(
                                  contentPadding: const EdgeInsets.all(8),
                                  title: Text(todo.taskList[index].title),
                                  subtitle: Text(todo.taskList[index].detail),
                                ),
                              );
                            }));
                      },
                    )))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<TodoModel>(context, listen: false).addTaskInList();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
