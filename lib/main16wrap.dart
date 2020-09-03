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
      theme: ThemeData(primarySwatch: Colors.blue),
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
    return Container(
        height: 600,
        width: 400,
        color: Colors.red,
        child: Wrap(
          spacing: 10, // x轴的距离
          runSpacing: 10, // y轴的距离
//        direction: Axis.vertical, //数据的排列方向 默认水平的
//      alignment: WrapAlignment.center, // 水平方向整体的对齐方式
//        runAlignment: WrapAlignment.center, // 垂直方向整体的对齐方式
          children: [
            Mybtton("第1季"),
            Mybtton("第2季"),
            Mybtton("第3季"),
            Mybtton("第4季第4季第4季"),
            Mybtton("第5季"),
            Mybtton("第6季"),
            Mybtton("第7季第7季第7季"),
            Mybtton("第8季"),
            Mybtton("第9季"),
            Mybtton("第10季"),
          ],
        )
    );

    Wrap(
      spacing: 10, // x轴的距离
      runSpacing: 10, // y轴的距离
//      alignment: WrapAlignment.center, // 整体的对齐方式
      children: [
        Mybtton("第1季"),
        Mybtton("第2季"),
        Mybtton("第3季"),
        Mybtton("第4季"),
        Mybtton("第5季"),
        Mybtton("第6季"),
        Mybtton("第7季"),
        Mybtton("第8季"),
        Mybtton("第9季"),
        Mybtton("第10季"),
      ],
    );

//    return Wrap(
//      spacing: 10, // x轴的距离
//      runSpacing: 10, // y轴的距离
////      alignment: WrapAlignment.center, // 整体的对齐方式
//      children: [
//        Mybtton("第1季"),
//        Mybtton("第2季"),
//        Mybtton("第3季"),
//        Mybtton("第4季"),
//        Mybtton("第5季"),
//        Mybtton("第6季"),
//        Mybtton("第7季"),
//        Mybtton("第8季"),
//        Mybtton("第9季"),
//        Mybtton("第10季"),
//      ],
//    );
  }
}