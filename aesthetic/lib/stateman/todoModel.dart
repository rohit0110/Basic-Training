import 'package:aesthetic/stateman/taskModel.dart';
import 'package:flutter/cupertino.dart';

class TodoModel extends ChangeNotifier {
  List<TaskModel> taskList = [];
  addTaskInList() {
    TaskModel taskModel = TaskModel("Task ${taskList.length}", "abcd");
    taskList.add(taskModel);
    notifyListeners();
  }
}
