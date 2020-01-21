import 'package:program_app/core/base/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  int _tabIndex;

  HomeViewModel({int tabIndex = 0}) : this._tabIndex = tabIndex;

  int get currentTabIndex => this._tabIndex;

  set tabIndex(int value) {
    this._tabIndex = value;
    notifyListeners();
  }
}
