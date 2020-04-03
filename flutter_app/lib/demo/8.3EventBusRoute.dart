import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/demo/8.3EventBus.dart';



class EventBusRoute extends StatefulWidget {
  @override
  EventBusRouteState createState() =>
      new EventBusRouteState();
}

class EventBusRouteState extends State<EventBusRoute> {

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: () {
                print("点击...");
                
                bus.emit("login","一条来自下个页面的消息");

              },
            )
          ],
        ),
      ),
    );
  }
}


