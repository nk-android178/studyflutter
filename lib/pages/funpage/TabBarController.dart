import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  final argments;
  TabBarControllerPage({this.argments});
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void dispose() { // 销毁
    // TODO: implement dispose
    super.dispose();
  }
  @override
  void initState() { // 创建初始化
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() { // 可以实现多种监听操作
      if(_tabController.index == _tabController.animation.value){
        print(_tabController.index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
          controller: this._tabController,
            tabs: [
              Tab(text: "推荐1",),
              Tab(text: "推荐2",)
            ]
        ),
      ),
      body: TabBarView(
          controller: this._tabController,
          children: [
            Center(child: Text("热销1")),
            Center(child: Text("热销2"))
          ]
      ),
    );
  }
}
