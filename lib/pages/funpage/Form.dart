import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title ;
  FormPage({this.title = "表单"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( // 浮动按钮 在底部
          child: Icon(Icons.add,color: Colors.black26,size: 40,),//Text("返回"),
          onPressed: (){
            Navigator.of(context).pop();
          },
          backgroundColor: Colors.yellow,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
