import 'package:flutter/material.dart';
import 'dart:math' as math;
//5.1填充

class TransformRoute extends StatelessWidget {
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
//            Container(
//            color: Colors.black,
//              child: new Transform(
//                alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
//                transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
//                child: new Container(
//                  padding: const EdgeInsets.all(8.0),
//                  color: Colors.deepOrange,
//                  child: const Text('Apartment for rent!'),
//                ),
//              ),
//            ),
//
//            DecoratedBox(
//              decoration:BoxDecoration(color: Colors.red),
//              //默认原点为左上角，左移20像素，向上平移5像素
//              child: Transform.translate(
//                offset: Offset(-20.0, -5.0),
//                child: Text("Hello world"),
//              ),
//            ),
//
//            DecoratedBox(
//              decoration:BoxDecoration(color: Colors.red),
//              child: Transform.rotate(
//                //旋转90度
//                angle:math.pi/2 ,
//                child: Text("Hello world"),
//              ),
//            ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
                //将Transform.rotate换成RotatedBox
                child: RotatedBox(
                  quarterTurns: 1, //旋转90度(1/4圈)
                  child: Text("Hello world"),
                ),
              ),
              Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
            ],
          ),



        ],
      ),
    );
  }
}