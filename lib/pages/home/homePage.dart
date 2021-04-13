import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();

  List images = [
    'http://via.placeholder.com/350x150',
    'http://via.placeholder.com/350x150',
    'http://via.placeholder.com/350x150'
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Container(
          child: ListView(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/counter');
              },
              child: Text('点击_bloc_计数器'))
        ],
      )),
    ));
  }
}
