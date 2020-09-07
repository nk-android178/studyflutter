import 'package:flutter/material.dart';

class SettingsPages extends StatefulWidget {
  @override
  _SettingsPagesState createState() => _SettingsPagesState();
}

class _SettingsPagesState extends State<SettingsPages> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.red, //选中       指示器配置  还可以配置可滑动，用于超过屏幕显示
                  unselectedLabelColor: Colors.white,//未选中
                  labelColor: Colors.red, // 标签颜色
                  indicatorSize: TabBarIndicatorSize.label, //和文字等宽  ,默认为tab
                  isScrollable: true,
                  tabs: [
                    Tab(text: "设置1"),
                    Tab(text: "设置2"),
                    Tab(text: "设置3"),
                    Tab(text: "设置4"),
                    Tab(text: "设置5"),
                    Tab(text: "设置6"),
                    Tab(text: "设置7"),
                    Tab(text: "设置8"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
            children: [
              ListView(
                children: [
                  ListTile(
                    title: Text("第一个tab"),
                  ),
                  ListTile(
                    title: Text("第一个tab"),
                  ),
                  ListTile(
                    title: Text("第一个tab"),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第2个tab"),
                  ),
                  ListTile(
                    title: Text("第2个tab"),
                  ),
                  ListTile(
                    title: Text("第2个tab"),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第3个tab"),
                  ),
                  ListTile(
                    title: Text("第3个tab"),
                  ),
                  ListTile(
                    title: Text("第3个tab"),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第4个tab"),
                  ),
                  ListTile(
                    title: Text("第4个tab"),
                  ),
                  ListTile(
                    title: Text("第4个tab"),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第5个tab"),
                  ),
                  ListTile(
                    title: Text("第5个tab"),
                  ),
                  ListTile(
                    title: Text("第5个tab"),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第6个tab"),
                  ),
                  ListTile(
                    title: Text("第6个tab"),
                  ),
                  ListTile(
                    title: Text("第6个tab"),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第7个tab"),
                  ),
                  ListTile(
                    title: Text("第7个tab"),
                  ),
                  ListTile(
                    title: Text("第7个tab"),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第8个tab"),
                  ),
                  ListTile(
                    title: Text("第8个tab"),
                  ),
                  ListTile(
                    title: Text("第8个tab"),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}
