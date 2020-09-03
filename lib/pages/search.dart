import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final argments;
  SearchPage({this.argments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索页面"),
      ),
      body: Text("搜索页面内容区域接受数据${argments != null ? argments['id'] : '0'}"),
    );
  }
}
