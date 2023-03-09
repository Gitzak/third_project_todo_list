import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the hive box
  final _myBox = Hive.box('myBox');

  // run this method if first time opening this app
  void createInitialeData() {
    toDoList = [
      ['Make todo list test', true],
      ['Make app 4', false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
