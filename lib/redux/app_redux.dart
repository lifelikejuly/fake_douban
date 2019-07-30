import 'package:redux/redux.dart';

final PageReducer = combineReducers<int>([
  TypedReducer<int,PageDatAction>(_refresh),
]);


int _refresh(int index, action) {
  index = action.index;
  return index;
}

class PageDatAction{
  final int index;
  PageDatAction(this.index);
}