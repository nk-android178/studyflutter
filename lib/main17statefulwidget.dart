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

// 自定义有状态组件 使用快捷键 stl
class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {

  List list = new List();

  int num =0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: this.list.map((e) =>
              ListTile(
                title: Text(e),
              )
          ).toList()
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
            setState(() {
              this.list.add("新加数据");
            });
          },
        )
      ],
    );


//    return Column(
//      children: [
//        SizedBox(height: 200,),
//        Chip(
//          label: Text('${this.num}'),
//        ),
//        SizedBox(height: 20,),
//        RaisedButton(
//          child: Text("按钮"),
//          onPressed: (){
//            setState(() {
//              this.num++;
//            });
//          },
//        )
//      ],
//    );
  }
}




