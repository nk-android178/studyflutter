import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final argments;
  String phone;
  String pass;
  RegisterPage({this.argments}){
    this.phone = argments != null ? argments['phoneController'] : '0';
    this.pass = argments != null ? argments['passController'] : '0';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册页面"),
      ),
      body: Column(
        children: [
          Text("接受手机号${argments != null ? argments['phoneController'] : '0'}"),
          Text("接受密码${argments != null ? argments['passController'] : '0'}"),
          RaisedButton(
            child: Text("校验"),
            onPressed: (){
              Navigator.pushNamed(context, '/check',arguments: {
                'phoneController': this.phone,
                'passController': this.pass
              });
            },
          )
        ],
      )
    );
  }
}
