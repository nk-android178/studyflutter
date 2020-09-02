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
      home: Tabs(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}



class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold是一个路由页的骨架
      appBar: AppBar(title: Text('flutter demo')),
      body: Text("tabbar"),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_location),
              title: Text("我")
          ),
        ],
        // 在item数量超过3后添加如下代码
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color(0xff666666),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
      ),
    );
  }
}



