import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo/Models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Bread'),
    Task(name: 'Milk'),
    Task(name: 'Exercise'),
    Task(name: 'School'),
    Task(name: 'Play'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toogleDone();
    notifyListeners();
  }

  void deleteTas(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
