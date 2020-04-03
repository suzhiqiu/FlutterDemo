import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

//reducer文件中，reducer用于接收意图，该文件提供了Reducer，声明Reducer监听的action，实现监听到action的动作
//
//

Reducer<EntranceState> buildReducer() {
  println('Reducer:buildReducer');
  return asReducer(
    <Object, Reducer<EntranceState>>{
      EntranceAction.action: _onAction,

      //监听的Action
      EntranceAction.updateData : _updateData, //监听到PageAction.update
    },
  );
}

EntranceState _onAction(EntranceState state, Action action) {
  final EntranceState newState = state.clone();
  return newState;
}

//
EntranceState _updateData(EntranceState state, Action action) {
  println('Reducer:_updateData');
  final EntranceState newState = state.clone();
  //获取action附带的数据
  final Map<String, String> updateMap = action.payload ??<String, String>{};
  //
  newState.title = updateMap['title'] ?? newState.title;
  newState.content = updateMap['content'] ?? newState.content;
  //
  return newState;
}