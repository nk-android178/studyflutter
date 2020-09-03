import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title ;
  FormPage({this.title = "表单"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( // 浮动按钮 在底部
          child: Text("返回"),
          onPressed: (){
            Navigator.of(context).pop();
          }
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("表单页面1"),
          ),
          ListTile(
            title: Text("表单页面2"),
          ),
          ListTile(
            title: Text("表单页面3"),
          ),
          ListTile(
            title: Text("表单页面4"),
          ),
          ListTile(
            title: Text("表单页面5"),
          ),
          ListTile(
            title: Text("表单页面6"),
          ),
        ],
      ),
    );
  }
}
