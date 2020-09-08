import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart' as DateFormat;//取别名解决国际化后库冲突
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

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
    nowtime = DateFormat.formatDate(DateTime.now(), [DateFormat.yyyy,'年',DateFormat.mm,'月',DateFormat.dd,'日']);
    print(nowtime);
  }

  DateTime _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12,minute: 20);
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
        lastDate: DateTime(2100),
      locale: Locale('zh')
    );
    print(time);
    setState(() {
      this._nowDate = time;
    });
  }
  _showDateTime2() async{ // 异步操作
    var time = await showTimePicker(
        context: context,
        initialTime: _nowTime,
    );
    print(time);
    setState(() {
      this._nowTime = time;
    });
  }

  DateTime _nowDate3 = DateTime.now();
  void _showDatePicker3() {
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.blue)),
        cancel: Text('取消', style: TextStyle(color: Colors.black26)),
      ),
      minDateTime: DateTime.parse('1980-01-01'),
      maxDateTime: DateTime.parse('2100-01-01'),
      initialDateTime: _nowDate3,
//      dateFormat: 'yyyy-MMMM-dd',
      dateFormat: 'yyyy年MMMM月dd日   EEE,H时:m分',
      pickerMode: DateTimePickerMode.datetime,


      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
//      onChange: (dateTime, List<int> index) {
//        setState(() {
//          _nowDate3 = dateTime;
//        });
//      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _nowDate3 = dateTime;
          print(_nowDate3);
        });
      },
    );
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("选择日期${DateFormat.formatDate(_nowDate, [DateFormat.yyyy,'年',DateFormat.mm,'月',DateFormat.dd,'日'])}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: (){
                  _showDateTime();
                },
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${_nowTime.format(context)}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: (){
                  _showDateTime2();
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("选择第三方控件日期${DateFormat.formatDate(_nowDate3, [DateFormat.yyyy,'年',DateFormat.mm,'月',DateFormat.dd,'日'])}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: (){
                  _showDatePicker3();
                },
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${DateFormat.formatDate(_nowDate3, [DateFormat.HH,'时',DateFormat.nn,'分'])}"),//,DateFormat.ss,'秒'
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: (){
                  _showDatePicker3();
                },
              ),
            ],
          ),
        ],
      ),
    );

  }
}
