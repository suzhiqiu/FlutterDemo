import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
//import 'package:flutter/material.dart';

//effect会比reducer优先收到action

Effect<EntranceState> buildEffect() {
  return combineEffects(<Object, Effect<EntranceState>>{
//    Lifecycle.initState : _init,
//    EntranceAction.onEdit : _onEdit,
    EntranceAction.action: _onAction,
  });
}

void _onAction(Action action, Context<EntranceState> ctx) {
}



//void _init(Action action, Context<EntranceState> ctx) {
//  println("Effect: _init");
//  ctx.dispatch(EntranceActionCreator.update('title', 'init'));
//}
//
//  String _input;
//
//void _onEdit(Action action, Context<EntranceState> ctx) {
//  println("Effect: _onEdit");
//
//  //showDialog()
//
//}