import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureDetectorRoute extends StatefulWidget {
  @override
  GestureDetectorRouteState createState() =>
      new GestureDetectorRouteState();
}

class GestureDetectorRouteState extends State<GestureDetectorRoute> {
//  String _operation = "No Gesture detected!"; //保存事件名
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: GestureDetector(
//        child: Container(
//          alignment: Alignment.center,
//          color: Colors.blue,
//          width: 200.0,
//          height: 100.0,
//          child: Text(_operation,
//            style: TextStyle(color: Colors.white),
//          ),
//        ),
//        onTap: () => updateText("Tap"),//点击
//        onDoubleTap: () => updateText("DoubleTap"), //双击
//        onLongPress: () => updateText("LongPress"), //长按
//      ),
//    );
//  }
//
//  void updateText(String text) {
//    //更新显示的事件名
//    setState(() {
//      _operation = text;
//    });
//  }


//  //偏移 移动
//  double _top = 100.0; //距顶部的偏移
//  double _left = 0.0;//距左边的偏移
//
//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//      children: <Widget>[
//        Positioned(
//          top: _top,
//          left: _left,
//          child: GestureDetector(
//            child: CircleAvatar(child: Text("A")),
////            //手指按下时会触发此回调
////            onPanDown: (DragDownDetails e) {
////              //打印手指按下的位置(相对于屏幕)
////              print("用户手指按下：${e.globalPosition}");
////            },
////            //手指滑动时会触发此回调
////            onPanUpdate: (DragUpdateDetails e) {
////              //用户手指滑动时，更新偏移，重新构建
////              setState(() {
////                _left += e.delta.dx;
////                _top += e.delta.dy;
////              });
////            },
////            onPanEnd: (DragEndDetails e){
////              //打印滑动结束时在x、y轴上的速度
////              print(e.velocity);
////            },
//
//
//
//          //垂直方向拖动事件
//            onVerticalDragUpdate: (DragUpdateDetails details) {
//              setState(() {
//                _top += details.delta.dy;
//              });
//            },
//
//
//          ),
//        )
//      ],
//    );
//  }


//    TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
//    bool _toggle = false; //变色开关
//
//    @override
//    void dispose() {
//      //用到GestureRecognizer的话一定要调用其dispose方法释放资源
//      _tapGestureRecognizer.dispose();
//      super.dispose();
//    }
//
//    @override
//    Widget build(BuildContext context) {
//      return Center(
//        child: Text.rich(
//            TextSpan(
//                children: [
//                  TextSpan(text: "你好世界"),
//                  TextSpan(
//                    text: "点我变色",
//                    style: TextStyle(
//                        fontSize: 30.0,
//                        color: _toggle ? Colors.blue : Colors.red
//                    ),
//                    recognizer: _tapGestureRecognizer
//                      ..onTap = () {
//                        setState(() {
//                          _toggle = !_toggle;
//                        });
//                      },
//                  ),
//                  TextSpan(text: "你好世界"),
//                ]
//            )
//        ),
//      );
//    }




//    double _left = 30.0;
//    @override
//    Widget build(BuildContext context) {
//      return Stack(
//        children: <Widget>[
//          Positioned(
//            left: _left,
//            top: 200,
//            child: GestureDetector(
//              child: CircleAvatar(child: Text("A")), //要拖动和点击的widget
//              onHorizontalDragUpdate: (DragUpdateDetails details) {
//                setState(() {
//                  _left += details.delta.dx;
//                });
//              },
//              onHorizontalDragEnd: (details){
//                print("onHorizontalDragEnd");
//              },
//              onTapDown: (details){
//                print("down");
//              },
//              onTapUp: (details){
//                print("up");
//              },
//            ),
//          )
//        ],
//      );
//    }



    //手势冲突 解决通过listen
    double _left = 30.0;
    @override
    Widget build(BuildContext context) {
      return Stack(
        children: <Widget>[
          Positioned(
            left: _left,
            top: 200,
            child: GestureDetector(
              child: CircleAvatar(child: Text("A")), //要拖动和点击的widget
              onHorizontalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _left += details.delta.dx;
                });
              },
              onHorizontalDragEnd: (details){
                print("onHorizontalDragEnd");
              },
              onTapDown: (details){
                print("down");
              },
              onTapUp: (details){
                print("up");
              },
            ),
          )
        ],
      );
    }



}