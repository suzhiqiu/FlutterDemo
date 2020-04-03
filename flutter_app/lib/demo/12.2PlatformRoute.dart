
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class PlatformRoute extends StatefulWidget {
  @override
  PlatformRouteeState createState() =>
      new PlatformRouteeState();
}

class PlatformRouteeState extends State<PlatformRoute> {

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("New Page"),
              textColor: Colors.blue,
              onPressed: () {
                print("点击...");

                debugDefaultTargetPlatformOverride=TargetPlatform.iOS;
                print(defaultTargetPlatform); // 会输出TargetPlatform.iOS

              },
            )
          ],
        ),
      ),
    );
  }


}