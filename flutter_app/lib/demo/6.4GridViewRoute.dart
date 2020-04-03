import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class GridViewRoute extends StatefulWidget {
  @override
  _InfiniteListViewState createState () => new _InfiniteListViewState();
}



class _InfiniteListViewState extends State<GridViewRoute> {

  List<IconData> _icons = []; //

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Column(children: <Widget>[
          GridTile(child :Text("商品列表")),
          Expanded (
              child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.0),
          itemCount: _icons.length,
          itemBuilder: (context,index) {
            //如果显示到最后一个并且Icon总数 小于200时 继续获取数据
            if (index == _icons.length - 1 && _icons.length < 200) {
              _retrieveData();
            }

            return Icon(_icons[index]);

          }

          ),
        )
        ])
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {

      setState(() {
        //重新构建列表

        _icons.addAll([
          Icons.ac_unit,
          Icons.airport_shuttle,
          Icons.all_inclusive,
          Icons.beach_access, Icons.cake,
          Icons.free_breakfast

        ]);


      });
    });
  }

}

