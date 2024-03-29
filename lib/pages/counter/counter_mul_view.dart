import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/counter/bloc/color_bloc.dart';
import 'package:flutter_app/pages/counter/bloc/counter_bloc.dart';
import 'package:flutter_app/widget/toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterMulView extends StatefulWidget {
  CounterMulView({Key key}) : super(key: key);

  @override
  _CounterMulViewState createState() => _CounterMulViewState();
}

class _CounterMulViewState extends State<CounterMulView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('计算器')),
      body: Center(
        child: Column(
          children: [
            //2.
            MultiBlocListener(
              listeners: [
                BlocListener<CounterBloc, CounterState>(
                  listener: (context, state) {
                    print('BlocListener--->CounterBloc--->${state.value}');
                  },
                ),
                BlocListener<ColorBloc, ColorState>(
                  listener: (context, state) {
                    print(
                        'BlocListener--->CounterBloc--->${state.currentColor}');
                  },
                ),
              ],
              child: BlocBuilder<CounterBloc, CounterState>(
                //操纵的数据
                builder: (context, state) {
                  return Column(
                    children: [
                      Text('${state.value}'),
                      BlocBuilder<ColorBloc, ColorState>(
                        builder: (context, state) {
                          return Container(
                            color: state.currentColor,
                            width: 100,
                            height: 100,
                          );
                        },
                      )
                    ],
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //3.
                BlocProvider.of<CounterBloc>(context).add(CounterAddEvent());
              },
              child: Text('加法'),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(CounterSubEvent());
              },
              child: Text('减法'),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<ColorBloc>(context).add(ColorRedEvent());
              },
              child: Text('变红'),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<ColorBloc>(context).add(CounterGreenEvent());
              },
              child: Text('变绿'),
            ),
            //图片加载
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/public/image_placeholder.gif',
              image:
                  'http://news.xmhouse.com/bd/202104/W020210416619919112455.jpg',
              height: 50,
              width: 50,
            ),

            RichText(
                text: TextSpan(style: TextStyle(fontSize: 18), children: [
              TextSpan(
                  text: "登录就同意", style: TextStyle(color: Color(0xAA333333))),
              TextSpan(
                  text: "《巴乐兔服务协议》",
                  style: TextStyle(color: Color(0xAACE1928)),
                  // 当用两个.号调用对象的方法或者引用它的属性时，表达式返回的值是该对象本身
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('跳转隐私协议....');
                      JToast.info('跳转隐私协议....');
                    })
            ]))
          ],
        ),
      ),
    );
  }
}
