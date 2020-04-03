import 'package:fish_redux/fish_redux.dart';

class EntranceState implements Cloneable<EntranceState> {

  String title;
  String content;


  EntranceState({this.title, this.content });

  @override
  EntranceState clone() {
    return EntranceState()
            ..title = title
            ..content = content;
  }
}

EntranceState initState(Map<String, dynamic> args) {
  return EntranceState(title: 'title', content: 'content');
}
