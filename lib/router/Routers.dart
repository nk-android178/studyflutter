import 'package:flutter/material.dart';
import '../pages/funpage/Form.dart';
import '../pages/funpage/search.dart';
import '../pages/tabs.dart';
import '../pages/login/login.dart';
import '../pages/login/register.dart';
import '../pages/login/check.dart';
import '../pages/funpage/TabBarController.dart';
import '../pages/funpage/timer.dart';
import '../pages/funpage/swiper.dart';
import '../pages/funpage/dialog.dart';
import '../pages/funpage/httpdata.dart';

//配置路由
final routes = {
  '/': (context) => Tabs(), // 加arguments可以传值
  '/form': (context, {arguments}) => FormPage(),
  '/search': (context, {arguments}) => SearchPage(argments: arguments),
  '/login': (context, {arguments}) => LoginPage(argments: arguments),
  '/register': (context, {arguments}) => RegisterPage(argments: arguments),
  '/check': (context, {arguments}) => CheckPage(argments: arguments),
  '/tabbarcontroller': (context, {arguments}) => TabBarControllerPage(argments: arguments),
  '/timer': (context) => TimerPage(),
  '/swiper': (context) => SwiperPage(),
  '/dialog': (context) => DialogPage(),
  '/httpdata': (context) => HttpDataPage(),
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