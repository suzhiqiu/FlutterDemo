import 'package:flutter/material.dart';
import '../../widget/toast.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();

  void showDlg() {
    print(textController.text);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text('美女类型不能为空')));
  }

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
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                labelText: '美女类型',
                helperText: '请输入你喜欢的类型',
              ),
            ),
            TextButton(
                onPressed: () {
                  //JToast.info('我是一个小吐司');
                  //print('我是一个小吐司');
                  showDlg();
                },
                child: Text('点击'))
          ],
        ),
      ),
    ));
  }
}
