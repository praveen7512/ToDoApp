import 'package:flutter/material.dart';
import 'package:todo/Model/Task_Data.dart';
import 'package:todo/widgets/tasktitle.dart';
import 'package:provider/provider.dart';


class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<Task_Data>(
        builder: (context, tasksdata, child) {

          return ListView.builder(itemBuilder:
              (context, index) {
                final task =tasksdata.taksList[index];



                return
              tasktitle(name: task.name,
                  isChecked: task.isdone,
                  callbackfun: (checkboxstate) {

                   tasksdata.updateTask(task);

                   print("update");
                },longPressCallBack:
                  (){
                    tasksdata.deleteTask(task);
                    print("delete");
                  }


                 );
          },
            itemCount: tasksdata.taksList.length,
          );
        });
  }

}


