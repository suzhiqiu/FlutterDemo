import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorInitial(Colors.yellow));

  Color color = Colors.yellow;

  @override
  Stream<ColorState> mapEventToState(
    ColorEvent event,
  ) async* {
    if (event is ColorRedEvent) {
      yield* _mapRedEventToState();
    } else if (event is CounterGreenEvent) {
      yield* _mapGreenEventToState();
    }
  }

  //红色
  Stream<ColorState> _mapRedEventToState() async* {
    color = Colors.red;
    yield ColorChange(this.color);
  }

  //绿色
  Stream<ColorState> _mapGreenEventToState() async* {
    color = Colors.green;
    yield ColorChange(this.color);
  }
}
