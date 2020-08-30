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
    return Center(
      child: Container( // Container作为容器组件
        child: Text(
          '文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本',
          textAlign: TextAlign.center,  // 对齐方式
          overflow: TextOverflow.ellipsis, // 超出后的效果
          maxLines: 2,
          style: TextStyle( // 文本样式
            fontSize: 30.0,
            color: Colors.red,
            fontWeight: FontWeight.w800,
            decoration: TextDecoration.lineThrough, // 中间线
            decorationColor: Colors.white, // 白色的中间线
            decorationStyle: TextDecorationStyle.dashed //虚线
          ),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow, //背景颜色
          border: Border.all( //边框颜色
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(50) // 边框圆角
          ),
        ),
//        padding: EdgeInsets.all(20), //内边距
        margin: EdgeInsets.fromLTRB(10, 30, 50, 20), //外边距
//        transform: Matrix4.translationValues(100, 0, 0), // 位移
//        transform: Matrix4.rotationZ(0.3), // 旋转
//        transform: Matrix4.diagonal3Values(1.2, 1, 1)// 缩放
      alignment: Alignment.bottomCenter,//容器里 元素对齐
      )
    );
  }
  
}
