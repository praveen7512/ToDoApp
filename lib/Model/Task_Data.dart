


import 'package:flutter/cupertino.dart';
import 'Task.dart';

class Task_Data extends ChangeNotifier {

  List<Task> _tasks = [Task(name:"buy sugar")
    ,Task(name:"buy tea"),
     Task(name: "buy coffe"),
  ];

  int get taskcount => _tasks.length;

  List<Task> get taksList => _tasks;

  void addTask(String taskname){
    final task = Task(name: taskname);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){

    _tasks.remove(task);
    notifyListeners();
  }

}