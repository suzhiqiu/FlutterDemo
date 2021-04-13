part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  //value
  final int value;
  //
  const CounterState(this.value);

  @override
  List<Object> get props => [value];
}

//初始化
class CounterInitial extends CounterState {
  CounterInitial(int value) : super(value);
}

//改变
class CounterChange extends CounterState {
  CounterChange(int value) : super(value);
}
