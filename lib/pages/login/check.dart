import 'package:flutter/material.dart';
import 'package:flutternext/pages/tabs.dart';

class CheckPage extends StatelessWidget {
  final argments;
  CheckPage({this.argments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("校验页面"),
      ),
      body: Column(
        children: [
          Text("接受手机号数据${argments != null ? argments['phoneController'] : '0'}"),
          Text("接受密码数据${argments != null ? argments['passController'] : '0'}"),
          RaisedButton(
            child: Text('确定'),
            onPressed: (){
              Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(builder: (context)=>Tabs(index: 3))
              , (route) => route ==  null);
            },
          )
        ],
      )
    );
  }
}
