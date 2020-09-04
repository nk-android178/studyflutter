import 'package:flutter/material.dart';

class MyPages extends StatefulWidget {
  @override
  _MyPagesState createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child: Text("用户登录"),
          onPressed: (){
            Navigator.pushNamed(context, "/login",arguments: {
              "id": 136
            });
          },
        )
      ],
    );
  }
}
