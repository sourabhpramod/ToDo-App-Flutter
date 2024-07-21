import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('myBox');

  void createInitialData() {
    toDoList = [
      ["Do Exercie", false],
      ["Do Homework", false],
    ];
  }

  void LoadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void UpdateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
