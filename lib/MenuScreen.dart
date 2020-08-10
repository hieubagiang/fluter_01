import 'package:flutter/material.dart';

import 'common/route_list.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, RouteList.login),
            child: Text('Login')
          ),
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, RouteList.todoList),
            child: Text('Todo App')
          )

        ],
      ),
    );
  }
}