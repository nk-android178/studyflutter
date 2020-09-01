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
    return ListView(
      padding: EdgeInsets.all(10), //边距
      children: <Widget>[
        ListTile(
          title: Text(
            "1强化学习之后，机器人学习瓶颈如何突破？",
            style: TextStyle(
              fontSize: 18
            ),
          ), // 标题
          subtitle: Text('强化学习是否真的那么灵？'), // 二级标题
        ),
        ListTile(
          title: Text("2强化学习之后，机器人学习瓶颈如何突破？"), // 标题
          subtitle: Text('强化学习是否真的那么灵？'), // 二级标题
        ),
        ListTile(
          title: Text("3强化学习之后，机器人学习瓶颈如何突破？"), // 标题
          subtitle: Text('强化学习是否真的那么灵？'), // 二级标题
        ),
        ListTile(
          title: Text("4强化学习之后，机器人学习瓶颈如何突破？"), // 标题
          subtitle: Text('强化学习是否真的那么灵？'), // 二级标题
        ),
        ListTile(
          title: Text("5强化学习之后，机器人学习瓶颈如何突破？"), // 标题
          subtitle: Text('强化学习是否真的那么灵？'), // 二级标题
        ),
        ListTile(
          title: Text("6强化学习之后，机器人学习瓶颈如何突破？"), // 标题
          subtitle: Text('强化学习是否真的那么灵？'), // 二级标题
        ),
        ListTile(
          title: Text("7强化学习之后，机器人学习瓶颈如何突破？"), // 标题
          subtitle: Text('强化学习是否真的那么灵？'), // 二级标题
        ),
        ListTile(
          title: Text("8强化学习之后，机器人学习瓶颈如何突破？"), // 标题
          subtitle: Text('强化学习是否真的那么灵？'), // 二级标题
        )
      ],
    );
  }

}
