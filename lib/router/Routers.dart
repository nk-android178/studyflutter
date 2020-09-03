import 'package:flutter/material.dart';
import '../pages/Form.dart';
import '../pages/search.dart';
import '../pages/tabs.dart';

//配置路由
final routes = {
  '/': (context, {arguments}) => Tabs(), // 加arguments可以传值
  '/form': (context, {arguments}) => FormPage(),
  '/search': (context, {arguments}) => SearchPage(argments: arguments)
};

//配置根组件命名路由传参
// ignore: top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  } else {
    final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
    );
    return route;
  }
};