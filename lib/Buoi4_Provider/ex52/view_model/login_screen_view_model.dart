import 'package:flutter/foundation.dart';
import 'package:flutter_01/Buoi4_Provider/ex51/model/account.dart';
import 'package:flutter_01/Buoi4_Provider/ui/view_model/base_view_model.dart';

class SecondLoginScreenViewModel extends BaseViewModel {
  String _option;
  String _location;


  String get option => _option;

  set option(String value) {
    _option = value;
    notifyListeners();
  }

  Future login() {
    debugPrint(
        'ACCOUNT: ${Account(email: this.option, password: this.location).toJson()}');
  }

  String get location => _location;

  set location(String value) {
    _location = value;
    notifyListeners();
  }
}
