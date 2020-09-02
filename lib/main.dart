import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

// StatelessWidget 无状态的组件
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp一般作为根组件
      home: Text("tab"),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}




