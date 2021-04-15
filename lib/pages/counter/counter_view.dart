import 'package:flutter/material.dart';
import 'package:flutter_app/pages/counter/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatefulWidget {
  CounterView({Key key}) : super(key: key);

  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('计算器')),
      body: Center(
        child: Column(
          children: [
            //2.
            BlocBuilder<CounterBloc, CounterState>(
              //操纵的数据
              builder: (context, state) {
                return Text('${state.value}');
              },
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
            )
          ],
        ),
      ),
    );
  }
}
