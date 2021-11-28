import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Model/Task_Data.dart';

late String newTaskTitle;
class AddTaskScreen extends StatelessWidget {

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: Size(88, 44),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    backgroundColor: Colors.blue,
  );


  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff757575) ,
      child: Container(
        // color: Colors.white,
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:<Widget> [
              SizedBox(height: 30,),
              Text("Add Task",
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),),
              TextField(
                autofocus: true,
                textAlign:TextAlign.center,
                onChanged: (newText){
                 newTaskTitle=newText;
                },
              ),
              SizedBox(height: 30),
              TextButton(
                  style: flatButtonStyle,
                  onPressed:(){
                    Provider.of<Task_Data>(context,listen: false).addTask(newTaskTitle);
                    print(newTaskTitle);
                    Navigator.pop(context);
                  },
                  child: Text("Add",style: TextStyle(color: Colors.black54,fontSize: 20
              ),))
            ],
          ),
        ),
      ),
    );
  }
}
