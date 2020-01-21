import 'package:program_app/core/base/base_view_model.dart';

class SettingViewModel extends BaseViewModel {
  String _language = 'English';
  SettingViewModel({String language = 'English'}) : this._language = language;

  String get language => this._language;
  set language(String value) {
    this._language = value;
    notifyListeners();
  }
}
