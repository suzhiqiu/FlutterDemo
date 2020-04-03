import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class AnimationRoute extends StatefulWidget {
  @override
  AnimationRouteState createState() => new AnimationRouteState();
}

//需要继承TickerProvider，如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class AnimationRouteState extends State<AnimationRoute>  with SingleTickerProviderStateMixin{

//  Animation<double> animation;
//  AnimationController controller;
//  var img=AssetImage("images/avatar.png");
//
//  initState() {
//    super.initState();
//    controller = new AnimationController(
//        duration: const Duration(seconds: 3), vsync: this);
//    //图片宽高从0变到300
//    animation = new Tween(begin: 0.0, end: 300.0).animate(controller)
//      ..addListener(() {
//        setState(()=>{});
//      });
//    //启动动画(正向执行)
//    controller.forward();
//  }
//
//  dispose() {
//    //路由销毁时需要释放动画资源
//    controller.dispose();
//    super.dispose();
//  }
//
////  Widget build(BuildContext context) {
////    return new Scaffold(
////      body: new Center(
////        child: new Center(
////          child: Image.asset("images/avatar.png",
////              width: animation.value,
////              height: animation.value
////          ),
////        ),
////      ),
////    );
////  }
//
//
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      body: new SingleChildScrollView(
//        child: Column(
//            children: <Image>[
//              Image(
//                image: img,
//                height: 50.0,
//                width: 100.0,
//                fit: BoxFit.fill,
//              ),
//              Image(
//                image: img,
//                height: 50,
//                width: 50.0,
//                fit: BoxFit.contain,
//              ),
//              Image(
//                image: img,
//                width: 100.0,
//                height: 50.0,
//                fit: BoxFit.cover,
//              ),
//              Image(
//                image: img,
//                width: 100.0,
//                height: 50.0,
//                fit: BoxFit.fitWidth,
//              ),
//              Image(
//                image: img,
//                width: 100.0,
//                height: 50.0,
//                fit: BoxFit.fitHeight,
//              ),
//              Image(
//                image: img,
//                width: 100.0,
//                height: 50.0,
//                fit: BoxFit.scaleDown,
//              ),
//              Image(
//                image: img,
//                height: 50.0,
//                width: 100.0,
//                fit: BoxFit.none,
//              ),
//              Image(
//                image: img,
//                width: 100.0,
//                color: Colors.blue,
//                colorBlendMode: BlendMode.difference,
//                fit: BoxFit.fill,
//              ),
//              Image(
//                image: img,
//                width: 100.0,
//                height: 200.0,
//                repeat: ImageRepeat.repeatY ,
//              )
//            ].map((e){
//              return Row(
//                children: <Widget>[
//                  Padding(
//                    padding: EdgeInsets.all(16.0),
//                    child: SizedBox(
//                      width: 100,
//                      child: e,
//                    ),
//                  ),
//                  Text(e.fit.toString())
//                ],
//              );
//            }).toList()
//        ),
//      ),
//    );
//  }


  Animation<double> animation;
  AnimationController controller;

//  initState() {
//    super.initState();
//    controller = new AnimationController(
//        duration: const Duration(seconds: 3), vsync: this);
//    //图片宽高从0变到300
//    animation = new Tween(begin: 0.0, end: 300.0).animate(controller);
//    //启动动画
//    controller.forward();
//  }


  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 1), vsync: this);
    //图片宽高从0变到300
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //动画执行结束时反向执行动画
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        //动画恢复到初始状态时执行动画（正向）
        controller.forward();
      }
    });

    //启动动画（正向）
    controller.forward();
  }


  Widget build(BuildContext context) {
    return GrowTransition(
      child: Image.asset("images/avatar.png"),
      animation: animation,
    );
  }

}


//封装常用的动画
class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});

  final Widget child;
  final Animation<double> animation;

  Widget build(BuildContext context) {
    return new Center(
      child: new AnimatedBuilder(
          animation: animation,
          builder: (BuildContext context, Widget child) {
            return new Container(
                height: animation.value,
                width: animation.value,
                child: child
            );
          },
          child: child
      ),
    );
  }
}