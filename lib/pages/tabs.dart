import 'package:flutter/material.dart';
import 'tabs/home.dart';
import 'tabs/category.dart';
import 'tabs/me.dart';
import 'tabs/settings.dart';

class Tabs extends StatefulWidget {

  final index;
  Tabs({this.index = 0});
  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {

  int _currentIndex;
  _TabsState(index){this._currentIndex = index;}

  List _pagelist = [
    HomePage(),
    CategotyPages(),
    SettingsPages(),
    MyPages()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold是一个路由页的骨架
      appBar: AppBar(title: Text('flutter demo')),
      body: this._pagelist[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex, // 配置对应的索引值
        onTap: (int index){
          setState(() { // 改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 30, //图标大小
//        fixedColor: Colors.red, //选中的颜色
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
//        selectedItemColor: Colors.blue,
//        unselectedItemColor: Color(0xff666666),
        type: BottomNavigationBarType.fixed, // 配置 按钮超过3个
        showUnselectedLabels: true,
      ),
    );
  }
}