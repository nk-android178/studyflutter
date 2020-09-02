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

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400.0,
        width: 300.0,
        color: Colors.lightGreen,
        child: Stack( //堆 层叠 类似框架布局  结合 Align组件
          children: [
            Positioned( //单独定位  默认左上角
              left: 10,
              child: Text('文本1'),
            ),
            Positioned(
              right: 10,
              child: Text('文本2'),
            ),
            Positioned(
              bottom: 10,
              child: Text('文本3'),
            ),
            Positioned(
              top: 10,
              child: Text('文本4'),
            ),
          ],
        ),
      ),
    );
//    return Center(
//        child: Container(
//          height: 400.0,
//          width: 300.0,
//          color: Colors.lightGreen,
//          child: Stack( //堆 层叠 类似框架布局  结合 Align组件
//            children: [
//              Align( //单独定位
//                alignment: Alignment.topLeft,
//                child: Text('文本1'),
//              ),
//              Align(
//                alignment: Alignment.topRight,
//                child: Text('文本2'),
//              ),
//              Align(
//                alignment: Alignment.bottomLeft,
//                child: Text('文本3'),
//              ),
//              Align(
//                alignment: Alignment.bottomRight,
//                child: Text('文本4'),
//              ),
//            ],
//          ),
//        ),
//    );
  }
}

class IconContainer extends StatelessWidget {
  IconData icon;
  Color color = Colors.red;
  double size = 32.0;

  IconContainer(this.icon, {this.color, this.size}); // 构造函数参数加{}表示可传参数 图标为必传参数
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
          child: Icon(Icons.home, size: this.size, color: Colors.white,)
      ),
    );
  }
}
