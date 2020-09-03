import 'package:flutter/material.dart';
import '../search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text("跳转到搜索页面"),
            onPressed: (){
              //通过命令路由传参数
              Navigator.pushNamed(context, '/search',arguments: {
                'id':123
              });
              //通过根组件命名路由统一管理跳转
//              Navigator.pushNamed(context, '/search');
              // 路由跳转
//              Navigator.of(context).push(
//                MaterialPageRoute(
//                  builder: (context)=>SearchPage()
//                )
//              );
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ]
    );
  }
}
