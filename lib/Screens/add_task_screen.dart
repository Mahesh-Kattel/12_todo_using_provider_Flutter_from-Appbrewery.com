import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Models/tasks.dart';

import '../Models/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 29),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              MaterialButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle!);
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                child: const Text('SAVE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
