import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// StatelessWidget 无状态的组件
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //MaterialApp一般作为根组件
      home: Scaffold( //Scaffold是一个路由页的骨架
        appBar: AppBar(
            title: Text('flutter demo')
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.lightGreen,
            child: ListView(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.teal,
                  child: Text('文本组件'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepPurple,
                  child: Text('文本组件'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child: Text('文本组件'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.indigo,
                  child: Text('文本组件'),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.deepPurple,
          )
        ],
      ),
    );
  }

}
