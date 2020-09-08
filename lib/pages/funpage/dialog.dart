import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../components/MyDialog.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

  _alertDialog() async{
    var result = await showDialog(
        context: context,
      builder: (context){
        return AlertDialog(
          title: Text("提示信息"),
          content: Text("是否删除"),
          actions: [
            FlatButton(
              child: Text("取消"),
              onPressed: (){
                print("取消");
                Navigator.pop(context,"取消");
              },
            ),
            FlatButton(
              child: Text("确定"),
              onPressed: (){
                print("确定");
                Navigator.pop(context,"确定");
              },
            )
          ],
        );
      }
    );
    print(result);
  }
  _simpleDialog() async{
    showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          title: Text("选择内容"),
          children: [
            SimpleDialogOption(
              child: Text("option A"),
              onPressed: (){
                print("option A");
                Navigator.pop(context);
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("option B"),
              onPressed: (){
                print("option B");
                Navigator.pop(context);
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text("option C"),
              onPressed: (){
                print("option C");
                Navigator.pop(context);
              },
            ),
          ],
        );
      }
    );
  }
  _modelBottomSheet() async{
    showModalBottomSheet(
        context: context,
        builder: (build){
          return Container(
            height: 200.0,
            child: Column(
              children: [
                ListTile(
                  title: Text("分享"),
                  onTap: (){
                    print("分享");
                    Navigator.pop(context);
                  },
                ),
                Divider(),
                ListTile(
                  title: Text("分享2"),
                  onTap: (){
                    print("分享2");
                    Navigator.pop(context);
                  },
                ),
                Divider(),
                ListTile(
                  title: Text("分享3"),
                  onTap: (){
                    print("分享3");
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        }
    );
  }

  _showToast() async{
    Fluttertoast.showToast(
        msg: "提示信息",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DialogPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('alertDialog'),
              onPressed: _alertDialog,
            ),
            RaisedButton(
              child: Text('simpleDialog'),
              onPressed: _simpleDialog,
            ),
            RaisedButton(
              child: Text('modelBottomDialog'),
              onPressed: _modelBottomSheet,
            ),
            RaisedButton(
              child: Text('第三方toast'),
              onPressed: _showToast,
            ),
            RaisedButton(
              child: Text('自定义dialog'),
              onPressed: (){
                showDialog(
                    context: context,
                  builder: (context){
                      return MyDialog(
                        title: "信息",
                        content: "提示内容",
                      );
                  }
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
