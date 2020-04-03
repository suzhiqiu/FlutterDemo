import 'package:fish_redux/fish_redux.dart';

//https://www.jianshu.com/p/e38bc1918e50
//TODO replace with your own action
enum EntranceAction { action , openGrid, updateData ,onEdit }

class EntranceActionCreator {

  static Action onAction() {
    return const Action(EntranceAction.action);
  }
  ////我们定义的
  static Action onGridAction() {
    return const Action(EntranceAction.openGrid);
  }



  //刷新action,再按钮事件中调用 参数传入要刷新的数据
  static Action update(String title,String content) {
    return  Action(
      EntranceAction.updateData,
      payload: <String, String>{'title': title, 'content': content},  //附带数据
    );
  }


  //===============
  static Action onEditAction() {
    return Action(EntranceAction.onEdit);
  }


  //===============




}
