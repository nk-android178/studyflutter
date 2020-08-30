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
      child:Container(
        child: Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1598628853327&di=c3507362b630cf1134d7ab23168a159b&imgtype=0&src=http%3A%2F%2Fa1.att.hudong.com%2F05%2F00%2F01300000194285122188000535877.jpg",
          alignment: Alignment.topLeft, //显示的位置，对齐方式
          color: Colors.blue, // 图片的颜色
          colorBlendMode: BlendMode.screen, // 图片混合模式 配合color使用
        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow
        ),
      )
    );
  }

}
