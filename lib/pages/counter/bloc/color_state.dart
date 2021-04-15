part of 'color_bloc.dart';

abstract class ColorState extends Equatable {
  final Color currentColor;
  const ColorState(this.currentColor);

  @override
  List<Object> get props => [currentColor];
}

class ColorInitial extends ColorState {
  ColorInitial(Color color) : super(color);
}

class ColorChange extends ColorState {
  ColorChange(Color color) : super(color);
}
