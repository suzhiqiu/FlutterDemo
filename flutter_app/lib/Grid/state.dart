import 'package:fish_redux/fish_redux.dart';

class GridState implements Cloneable<GridState> {

  @override
  GridState clone() {
    return GridState();
  }
}

GridState initState(Map<String, dynamic> args) {
  return GridState();
}
