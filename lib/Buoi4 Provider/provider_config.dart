// Define all provider in app

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ...independentServices
];

List<SingleChildWidget> independentServices = [
  Provider.value(value: Counter())
];