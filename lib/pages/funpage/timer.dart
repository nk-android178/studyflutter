import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class TimerPage extends StatefulWidget {

  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  var nowtime ;
  var times;
  void Timestamp(){
    times = new DateTime.now().millisecondsSinceEpoch;
    print(times);//单位毫秒 ，13位时间戳
    print(DateTime.fromMillisecondsSinceEpoch(times));//格式化日期
    nowtime = formatDate(DateTime.now(), [yyyy,'年',mm,'月',dd,'日']);
    print(nowtime);
  }

  DateTime _nowDate = DateTime.now();

//  _showDateTime(){
//    showDatePicker(
//        context: context,
//        initialDate: _nowDate,
//        firstDate: DateTime(1980),
//        lastDate: DateTime(2100)
//    ).then((value) => print(value));
//  }

  _showDateTime() async{ // 异步操作
    var time = await showDatePicker(
        context: context,
        initialDate: _nowDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100)
    );
    print(time);
    setState(() {
      this._nowDate = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TimerPage"),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text("获取当前时间戳${nowtime}"),
            onPressed: (){
              setState(() {
                Timestamp();
              });
            },
          ),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("选择日期${formatDate(_nowDate, [yyyy,'年',mm,'月',dd,'日'])}"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: (){
              _showDateTime();
            },
          )
        ],
      ),
    );

  }
}
