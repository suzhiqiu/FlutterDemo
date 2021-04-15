import 'package:flutter/material.dart';
import 'package:flutter_app/pages/counter/bloc/color_bloc.dart';
import 'package:flutter_app/pages/counter/bloc/counter_bloc.dart';
import 'package:flutter_app/pages/counter/counter_mul_view.dart';
import 'package:flutter_app/pages/counter/counter_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  CounterPage({Key key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

//单个
// class _CounterPageState extends State<CounterPage> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CounterBloc(), //这里是所有逻辑
//       child: CounterView(), //这里是所有界面
//     );
//   }

//多个
class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => ColorBloc(),
        ),
      ],
      child: CounterMulView(),
    );
  }
}
