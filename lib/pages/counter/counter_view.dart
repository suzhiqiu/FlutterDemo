import 'package:flutter/material.dart';

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
            ElevatedButton(
              onPressed: () {},
              child: Text('加法'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('减法'),
            )
          ],
        ),
      ),
    );
  }
}
