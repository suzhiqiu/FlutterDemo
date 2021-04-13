import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

/*
yield*,其后对象必须是Stream<T>对象
yield 后面 把值输出
*/

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(0));

  int counterNum = 0;

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is CounterAddEvent) {
      yield* _mapAddEventToState();
    } else if (event is CounterSubEvent) {
      yield* _mapSubEventToState();
    }
  }

  //加法
  Stream<CounterState> _mapAddEventToState() async* {
    this.counterNum += 1;
    yield CounterChange(this.counterNum);
  }

  //减法
  Stream<CounterState> _mapSubEventToState() async* {
    this.counterNum -= 1;
    yield CounterChange(this.counterNum);
  }
}
