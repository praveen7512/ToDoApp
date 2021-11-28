import 'package:flutter/material.dart';



class tasktitle extends StatelessWidget {



   final bool isChecked;
   final String name;
   final Function callbackfun;
   final VoidCallback longPressCallBack;

   tasktitle({this.isChecked=false
     ,required this.name,
     required this.callbackfun
     ,required this.longPressCallBack});




  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onLongPress: longPressCallBack

      ,
      title: Text(name,style: TextStyle(
        decoration:isChecked?TextDecoration.lineThrough :null
      ),),


      trailing:  Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged:(res){
            callbackfun(res);
      }
      )
    );


  }
}

//