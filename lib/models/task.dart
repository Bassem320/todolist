class Task{
  final taskName;
  var isChecked;
  Task({this.taskName,this.isChecked:false});

  changeTaskState(){
    isChecked = !isChecked;
  }
}