import 'package:flutter/material.dart';
import '../funpage/Form.dart';

class CategotyPages extends StatefulWidget {
  @override
  _CategotyPagesState createState() => _CategotyPagesState();
}

class _CategotyPagesState extends State<CategotyPages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text("跳转到表单页面并传值"),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=>FormPage(title:"跳转值")
              )
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )
      ],
    );
  }
}

