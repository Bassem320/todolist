import 'package:flutter/material.dart';
import 'package:flutter_todolist/models/task.dart';
import 'package:flutter_todolist/widgets/task_tile.dart';

class TaskList extends StatelessWidget {

  final taskList;
  TaskList({this.taskList});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskList.length,
      itemBuilder: (context,index){
        return TaskTile(taskList[index].taskName);
      },
    );
  }
}

