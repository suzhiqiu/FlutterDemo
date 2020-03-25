import 'package:flutter/material.dart';

class RouteTable extends StatelessWidget {



  final String text = "123";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New route"),
        ),
        body: Padding(padding: EdgeInsets.all(18),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(text),
                RaisedButton(
                  onPressed: () => Navigator.pop(context,"我是返回值"),
                  child: Text("返回"),
                )
              ],
            ),
          ),
        )
    );
  }
}