import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GridState state, Dispatch dispatch, ViewService viewService) {
  Widget buildView(GridState state, Dispatch dispatch, ViewService viewService) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Grid页面'),
      ),
      body: Text("Grid页面"),
    );
  }
}
