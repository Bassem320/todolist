import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  final Function addTaskCallBack;
  AddScreen({this.addTaskCallBack});

  @override
  _AddScreenState createState() => _AddScreenState();
}
var newTaskText ='';

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText:"Task...",
            ),
            onChanged: (text){
              newTaskText = text;
            },
            cursorColor: Colors.lightBlueAccent,
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            color: Colors.lightBlueAccent,
            onPressed: (){
              widget.addTaskCallBack(newTaskText);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
