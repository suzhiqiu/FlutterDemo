part of 'color_bloc.dart';

abstract class ColorEvent extends Equatable {
  const ColorEvent();

  @override
  List<Object> get props => [];
}

// 变红操作
class ColorRedEvent extends ColorEvent {}

// 变绿操作
class CounterGreenEvent extends ColorEvent {}
