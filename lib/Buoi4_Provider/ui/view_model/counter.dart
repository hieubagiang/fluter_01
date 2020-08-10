import 'package:flutter/foundation.dart';
import 'package:flutter_01/Buoi4_Provider/ui/view_model/base_view_model.dart';

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
class Counter extends BaseViewModel{
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}