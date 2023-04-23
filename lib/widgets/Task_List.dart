import 'package:flutter/cupertino.dart';
import 'package:todo/Models/tasks_data.dart';
import 'Task_Tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                taskTile: task.name,
                isChecked: task.isDone,
                checkBoxCallBack: (newValue) {
                  taskData.updateTask(task);
                },
                longPressed: () {
                  taskData.deleteTas(task);
                },
              );
            });
      },
    );
  }
}
