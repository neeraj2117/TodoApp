


import 'package:hive/hive.dart';

class ToDoDataBase {

  List toDoList = [];

  //reference the box
  final _mybox =  Hive.box('mybox');

  // run this when u r opening app for first time EVER!

  void createInitialData(){
    toDoList = [
      ["Do Exercise", false],
      ["Do Study", false],
      ["Learn Trading", false]
    ];
  }

  // load from database
  void loadData(){
    toDoList = _mybox.get("TODOLIST");
  }

  // update database
  void updateDataBase(){
    _mybox.put("TODOLIST", toDoList);
  }
}

