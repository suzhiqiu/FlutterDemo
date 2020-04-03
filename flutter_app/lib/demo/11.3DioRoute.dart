import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioRoute extends StatefulWidget {
  @override
  DioRouteState createState() =>
      new DioRouteState();
}

class DioRouteState extends State<DioRoute> {

  Dio _dio = new Dio();

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
              },
            ),

             FutureBuilder(
                future: _dio.get("https://api.github.com/orgs/flutterchina/repos"),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  //请求完成
                  if (snapshot.connectionState == ConnectionState.done) {
                    Response response = snapshot.data;
                    //发生错误
                    if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    }
                    //请求成功，通过项目信息构建用于显示项目名称的ListView
                    return ListView(
                      children: response.data.map<Widget>((e) =>
                          ListTile(title: Text(e["full_name"]))
                      ).toList(),
                    );
                  }
                  //请求未完成时弹出loading
                  return CircularProgressIndicator();
                }
            ),





          ],
        ),
      ),
    );
  }
}

