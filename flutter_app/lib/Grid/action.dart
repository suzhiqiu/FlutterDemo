import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GridAction { action }

class GridActionCreator {
  static Action onAction() {
    return const Action(GridAction.action);
  }
}
