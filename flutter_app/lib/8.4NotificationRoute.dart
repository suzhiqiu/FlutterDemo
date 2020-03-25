import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '8.3EventBus.dart';



class NotificationRoute extends StatefulWidget {
  @override
  NotificationRouteState createState() =>
      new NotificationRouteState();
}

class NotificationRouteState extends State<NotificationRoute> {

//  Widget build(BuildContext context) {
//    return new Scaffold(
//      body: new Center(
//        child: NotificationListener(
//          onNotification: (notification){
//            switch (notification.runtimeType){
//              case ScrollStartNotification: print("开始滚动"); break;
//              case ScrollUpdateNotification: print("正在滚动"); break;
//              case ScrollEndNotification: print("滚动停止"); break;
//              case OverscrollNotification: print("滚动到边界"); break;
//            }
//          },
//          child: ListView.builder(
//              itemCount: 100,
//              itemBuilder: (context, index) {
//                return ListTile(title: Text("$index"),);
//              }
//          ),
//        )
//      ),
//    );
//  }


//  String _msg="";
//  @override
//  Widget build(BuildContext context) {
//    //监听通知
//    return NotificationListener<MyNotification>(
//      onNotification: (notification) {
//        setState(() {
//          _msg+=notification.msg+"  ";
//        });
//        return true;
//      },
//      child: Center(
//        child: Column(
//          mainAxisSize: MainAxisSize.min,
//          children: <Widget>[
////          RaisedButton(
////           onPressed: () => MyNotification("Hi").dispatch(context),
////           child: Text("Send Notification"),
////          ),
//            Builder(
//              builder: (context) {
//                return RaisedButton(
//                  //按钮点击时分发通知
//                  onPressed: () => MyNotification("Hi").dispatch(context),
//                  child: Text("Send Notification"),
//                );
//              },
//            ),
//            Text(_msg)
//          ],
//        ),
//      ),
//    );
//  }



  String _msg="";
  @override
  Widget build(BuildContext context) {
    //监听通知
    return NotificationListener<MyNotification>(
      onNotification: (notification){
        print(notification.msg); //打印通知
        return false;
      },
      child: NotificationListener<MyNotification>(
          onNotification: (notification) {
            setState(() {
              _msg+=notification.msg+"  ";
            });
            return false;
          },
      ),
    );
  }

}


class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}
