import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/NewRoute.dart';
import 'package:flutter_app/RouteTable.dart';
import 'package:flutter_app/demo/5.1PaddingRoute.dart';
import 'package:flutter_app/demo/5.2ConstrainedBoxRoute.dart';
import 'package:flutter_app/demo/5.3DecoratedBoxRoute.dart';
import 'package:flutter_app/demo/5.4TransformRoute.dart';
import 'package:flutter_app/demo/5.5ContainerRoute.dart';
import 'package:flutter_app/demo/5.6ScaffoldRoute.dart';
import 'package:flutter_app/demo/5.7ClipRoute.dart';
import 'package:flutter_app/demo/6.2SingleChildScrollView.dart';
import 'package:flutter_app/demo/6.3ListViewRoute.dart';
import 'package:flutter_app/demo/6.4GridViewRoute.dart';
import 'package:flutter_app/demo/6.5CustomScrollViewRoute.dart';
import 'package:flutter_app/demo/6.6ScrollControllerRoute.dart';
import 'package:flutter_app/demo/7.1WillPopScopeRoute.dart';
import 'package:flutter_app/demo/7.2ShareDataRoute.dart';
import 'package:flutter_app/demo/7.4ThemeRoute.dart';
import 'package:flutter_app/demo/7.5FutureBuilderRoute.dart';
import 'package:flutter_app/demo/7.6DialogRoute.dart';
import 'package:flutter_app/demo/8.1PointerEventRoute.dart';
import 'package:flutter_app/demo/8.2GestureDetectorRoute.dart';
import 'package:flutter_app/demo/8.3EventBus.dart';
import 'package:flutter_app/demo/8.3EventBusRoute.dart';
import 'package:flutter_app/demo/8.4NotificationRoute.dart';
import 'package:flutter_app/demo/9.2AnimationRoute.dart';
import 'package:flutter_app/demo/9.3PageRoute.dart';
import 'package:flutter_app/demo/9.4HeroRoute.dart';
import 'package:flutter_app/demo/9.5StaggerAnimateRoute.dart';
import 'package:flutter_app/demo/9.6AnimatedSwitcherRoute.dart';
import 'package:flutter_app/demo/9.7AnimatedDecoratedBoxRoute.dart';
import 'package:flutter_app/demo/10.2GradientButtonRoute.dart';
import 'package:flutter_app/demo/10.3TurnBoxRoute.dart';
import 'package:flutter_app/demo/10.4CustomPaintRoute.dart';
import 'package:flutter_app/demo/10.5CircularProgressRoute.dart';
import 'package:flutter_app/demo/11.1FileOperationRoute.dart';
import 'package:flutter_app/demo/11.2HttpClientRoute.dart';
import 'package:flutter_app/demo/11.3DioRoute.dart';
import 'package:flutter_app/demo/11.5WebSocketRoute.dart';
import 'package:flutter_app/demo/11.6SocketAPIRoute.dart';
import 'package:flutter_app/demo/12.2PlatformRoute.dart';
import 'package:flutter_app/demo/12.3PluginRoute.dart';
import 'package:flutter_app/demo/14.5ImageCacheRoute.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_app/Entrance/page.dart';
import 'app.dart';

void main() => runApp(createApp());

//void main() =>  runApp(new MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {

    return new MaterialApp(
      title: '标题',
      initialRoute: "/",
      //注册路由表
      routes: {
        "new_age": (context) =>NewRoute(),
        "routeTable": (context) =>RouteTable(),
        "PaddingTestRoute": (context) =>PaddingTestRoute(),//5.1
        "ConstrainedBoxRoute": (context) =>ConstrainedBoxRoute(),//5.2
        "DecoratedBoxRouteRoute": (context) =>DecoratedBoxRoute(),//5.3
        "TransformRoute": (context) =>TransformRoute(),//5.4
        "ContainerRoute": (context) =>ContainerRoute(),//5.5
        "ScaffoldRoute": (context) =>ScaffoldRoute(),//5.6
        "ClipRoute":  (context) =>ClipRoute(),//5.6
        "SingleChildScrollViewRoute" :  (context) =>SingleChildScrollViewRoute(),// 6.2
        "ListViewRoute" :  (context) =>ListViewRoute(),// 6.3
        "GridViewRoute" :  (context) =>GridViewRoute(),// 6.4
        "CustomScrollViewRoute" : (context) =>CustomScrollViewRoute(),// 6.5
        "ScrollControllerRoute" : (context) =>ScrollControllerRoute(),// 6.6
        "WillPopScopeRoute" : (context) =>WillPopScopeRoute(),// 7.1
        "ShareDataRoute" : (context) =>ShareDataRoute(),// 7.1
        "ThemeRoute" : (context) =>ThemeRoute(),// 7.4
        "FutureBuilderRoute" : (context) =>FutureBuilderRoute(),// 7.5
        "DialogRoute" : (context) =>DialogRoute(),// 7.5
        "PointerEventRoute" : (context) =>PointerEventRoute(),// 8.1
        "GestureDetectorRoute" : (context) =>GestureDetectorRoute(),// 8.2
        "EventBusRoute" : (context) =>EventBusRoute(),// 8.3
        "NotificationRoute" : (context) =>NotificationRoute(),// 8.4
        "AnimationRoute" : (context) =>AnimationRoute(),// 9.2
        "HeroRoute"  : (context) =>HeroRoute(),// 9.2
        "StaggerAnimateRoute"  : (context) =>StaggerAnimateRoute(),// 9.5
        "AnimatedSwitcherRoute"  : (context) =>AnimatedSwitcherRoute(),// 9.6
        "AnimatedDecoratedBoxRoute"  : (context) =>AnimatedDecoratedBoxRoute(),// 9.7
        "GradientButtonRoute"  : (context) =>GradientButtonRoute(),// 10.2
        "TurnBoxRoute"  : (context) =>TurnBoxRoute(),// 10.3
        "CustomPaintRoute"  : (context) =>CustomPaintRoute(),// 10.4
        "GradientCircularProgressRoute"  : (context) =>GradientCircularProgressRoute(),// 10.4
        "FileOperationRoute"  : (context) =>FileOperationRoute(),// 11.1
        "HttpClientRoute"  : (context) =>HttpClientRoute(),// 11.2
        "DioRoute"  : (context) =>DioRoute(),// 11.3
        "WebSocketRoute"  : (context) =>WebSocketRoute(),// 11.5
        "SocketAPIRoute"  : (context) =>SocketAPIRoute(),// 11.6
        "PlatformRoute"  : (context) =>PlatformRoute(),// 12.2
        "PluginRoute" : (context) =>PluginRoute(),// 12.3
        "ImageCacheRoute"  : (context) =>ImageCacheRoute(),// 14.5

       // "EntrancePage"  : (context) =>EntrancePage(),// 14.5
      },
      //钩子
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(builder: (context) {
          String routeName = settings.name;
          print("路由 $routeName");

        });
      },

      localizationsDelegates: [
        // 本地化的代理类
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // 美国英语
        const Locale('zh', 'CN'), // 中文简体
        //其它Locales
      ],


      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {

  @override
  createState() => new RandomWordsStae();


}

class RandomWordsStae extends State<RandomWords> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: ()  {
                print("点击...");

                //通过路由表
                Navigator.pushNamed(context, 'EntrancePage');




//
//                bus.on("login", (arg) {
//                   print("arg:"+arg);
//                });

//                //9.3 动画过度
//                Navigator.push(
//                  context,
//                  PageRouteBuilder(
//                    transitionDuration: Duration(milliseconds: 500), //动画时间为500毫秒
//                    pageBuilder: (BuildContext context, Animation animation,
//                        Animation secondaryAnimation) {
//                      return new FadeTransition(
//                        //使用渐隐渐入过渡,
//                        opacity: animation,
//                        child: AnimationRoute(), //路由B
//                      );
//                    },
//                  ),
//                );
//
//                Navigator.push(context, FadeRoute(builder: (context) {
//                  return AnimationRoute();
//                }));


//                var result = await Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                      builder: (context) {
//                          return NewRoute (
//                                 text: "第一个页面传递参数",
//                          );
//                      },
//                    ),
//                );
//                //输出Result
//                print("路由返回值: $result");




              },
            )
          ],
        ),
      ),
    );
  }

}