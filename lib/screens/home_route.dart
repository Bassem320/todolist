
import 'package:flutter/material.dart';
import 'package:flutter_todolist/models/task.dart';
import 'package:flutter_todolist/widgets/task_list.dart';

import 'add_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var taskList = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(left:30, top:60,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlueAccent,
                        size: 35,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Todoey',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('${taskList.length} Tasks',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left:20, top:20,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: TaskList(taskList: taskList,),
                ),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add
          ),
          backgroundColor: Colors.lightBlueAccent,
          onPressed: (){
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
                context: context,
                builder: (context){
                  return AddScreen(addTaskCallBack: addTaskCallback);
                },
            );
          },
        ),
      ),
    );
  }
  addTaskCallback(String text){
    setState(() {
      taskList.add(Task(taskName: text));
    });
  }

}


