import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool?) checkBoxCallBack;
  final Function()? longPressed;
  //checkBoxCallback
  TaskTile(
      {required this.isChecked,
      required this.taskTile,
      required this.checkBoxCallBack,
      this.longPressed});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressed,
      //Error Add Const Over Here
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        checkColor: Colors.white,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}

// //Remove ? sign and ! and check the error in toogleCheckBox
