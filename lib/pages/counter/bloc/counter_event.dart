part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

// 加法操作
class CounterAddEvent extends CounterEvent {}

// 减法操作
class CounterSubEvent extends CounterEvent {}
