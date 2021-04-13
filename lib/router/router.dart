import 'package:flutter/material.dart';
import 'package:flutter_app/pages/counter/counter_page.dart';
import '../pages/tabs/tab.dart';
import '../pages/home/homePage.dart';
import '../pages/category/categoryPage.dart';
import '../pages/cart/cartPage.dart';
import '../pages/my/myPage.dart';

//配置路由
final routes = {
  '/': (context) => Tabs(),
  '/home': (context) => HomePage(),
  '/category': (context) => CategoryPage(),
  '/cart': (context) => CartPage(),
  '/my': (context) => MyPage(),
  //bloc相关页面
  '/counter': (context) => CounterPage(),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
// 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
