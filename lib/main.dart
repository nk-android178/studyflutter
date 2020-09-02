import 'package:flutter/material.dart';
import 'res/listData.dart';

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
      home: Scaffold(
        //Scaffold是一个路由页的骨架
        appBar: AppBar(title: Text('flutter demo')),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Mybtton extends StatelessWidget {
  final String text;
  const Mybtton(this.text,{Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(this.text),
        textColor: Theme.of(context).accentColor,
        onPressed: (){}
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) { // wrap 水平布局超出后自动换行，类似流布局
    return Mybtton("第一季");
}
