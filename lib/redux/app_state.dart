import 'package:fake_douban/redux/app_redux.dart';
class AppState{
  int currentIndex;
  AppState({this.currentIndex});
}


AppState appReducer(AppState appState,action){
  return AppState(
      currentIndex: PageReducer(appState.currentIndex,action)
  );
}