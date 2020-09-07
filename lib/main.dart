import 'package:flutter/material.dart';
import 'router/Routers.dart';

void main() {
  runApp(MyApp());
}

// StatelessWidget 无状态的组件
class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,// 去掉debug图标
      //MaterialApp一般作为根组件
//      home: Tabs(),
      initialRoute: '/',//初始化路由入口
      //配置根组件命名路由
//      routes: {
//        '/form':(context)=>FormPage(),
//        '/search':(contextt)=>SearchPage()
//      },
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}




