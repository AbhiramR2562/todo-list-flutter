import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // Reference the box
  final _myBox = Hive.box('mybox');

// run this method if this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["study", false],
      ["Do exercise", false],
    ];
  }

  // Load the data from the data base
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
