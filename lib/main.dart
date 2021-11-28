import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Model/Task_Data.dart';
import 'package:todo/Screens/taskscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>Task_Data(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}


