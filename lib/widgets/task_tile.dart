import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final taskName;
  TaskTile(this.taskName);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskName,
        style: TextStyle(
          //  var x = (condition)? 5 : 10;
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: MyCheckBox(
        isChecked: isChecked,
        checkBoxCallBack: changeState,
      ),
    );
  }

  changeState(state) {
    setState(() {
      isChecked = state;
    });
  }
}

class MyCheckBox extends StatelessWidget {
  final isChecked;
  final Function checkBoxCallBack;
  MyCheckBox({this.isChecked, this.checkBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: checkBoxCallBack,
    );
  }
}
