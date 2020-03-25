import 'package:flutter/material.dart';
import 'dart:math' as math;
//5.1填充

class ContainerRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //上下左右各添加16像素补白
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(10,200,10,0),
      child: Column(
        //显式指定对齐方式为左对齐，排除对齐干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            margin: EdgeInsets.all(20.0), //容器外补白
            color: Colors.orange,
            child: Text("Hello world!"),
          ),
          Container(
            padding: EdgeInsets.all(20.0), //容器内补白
            color: Colors.orange,
            child: Text("Hello world!"),
          ),



        ],
      ),
    );
  }
}