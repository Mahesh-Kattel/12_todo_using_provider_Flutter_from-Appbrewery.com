import 'package:flutter/material.dart';
import 'package:todo/Models/tasks_data.dart';
import 'package:todo/Screens/add_task_screen.dart';
import 'package:todo/widgets/Task_List.dart';
import 'package:provider/provider.dart';
import '../Models/tasks.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              // builder: (BuildContext Context) => AddTaskScreen());
              builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen()),
              ),
            );
          },
          backgroundColor: Colors.lightBlueAccent,
          child: const Icon(Icons.add)),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(bottom: 30, left: 30, right: 30, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(Icons.list,
                        size: 30, color: Colors.lightBlueAccent)),
                const SizedBox(height: 15),
                const Text(
                  'To Do App',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount}Tasks',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: TaskList()),
          ),
        ],
      ),
    );
  }
}
