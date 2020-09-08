import 'dart:async';
import 'package:flutter/material.dart';

class MyDialog extends Dialog{

  String title = "";
  String content = "";
  MyDialog({this.title,this.content});

  _showTime(context){
    var timer;
    timer = Timer.periodic(
      Duration(milliseconds: 3000), (t) {
        Navigator.pop(context);
        t.cancel();//取消定时器
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _showTime(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 200.0,
          width: 200.0,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(this.title),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                child: Text(this.content),
              )
            ],
          ),
        )
      )
    );
  }
}