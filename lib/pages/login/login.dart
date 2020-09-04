import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final argments;
  LoginPage({this.argments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录页面"),
      ),
      body: loginnext(argments)//Text("接受数据${argments != null ? argments['id'] : '0'}"),
    );
  }
}

class loginnext extends StatefulWidget {
  final argments;
  const loginnext(this.argments);
  @override
  _loginnextState createState() => _loginnextState(this.argments);
}

class _loginnextState extends State<loginnext> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final argments;

  _loginnextState(this.argments);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          controller: phoneController,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              icon: Icon(Icons.phone),
              labelText: "输入手机号",
              helperText: '请输入注册的手机号'
          ),
          autofocus: false,
        ),
        TextField(
          controller: passController,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              icon: Icon(Icons.lock),
              labelText: "输入密码",
              helperText: '请输入注册的手机号'
          ),
        ),
        RaisedButton(
          child: Text("接受数据${argments != null ? argments['id'] : '0'}"),
          onPressed: _login,
          color: Theme
              .of(context)
              .accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }

  void _login() {
    if (phoneController.text.length != 11) {
      showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(
                title: Text('手机号码格式不对'),
              ));
    } else if (passController.text.length == 0) {
      showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(
                title: Text('请填写密码'),
              ));
    } else {

      Navigator.pushNamed(context, '/register', arguments: {
        'phoneController': phoneController.text,
        'passController': passController.text
      });
      phoneController.clear();
      passController.clear();
    }
//    void onTextClear() {
//      setState(() {
//        phoneController.clear();
//        passController.clear();
//      });
//    }
  }
}
