import 'package:flutter/material.dart';
import 'package:flutter_01/route.dart';

import 'MenuScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter_ScreenUtil',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuScreen(),
      onGenerateRoute: router(),
    );
  }
}
