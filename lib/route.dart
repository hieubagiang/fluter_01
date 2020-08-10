import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_01/Buoi4_Provider/ex51/ui/login_screen.dart';
import 'package:flutter_01/common/route_list.dart';
import 'package:flutter_01/todo-app/ui/create_to_do_screen.dart';
import 'package:flutter_01/todo-app/ui/to_do_list_screen.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'Buoi4_Provider/ui/widget/base_widget.dart';
import 'todo-app/view_model/todo_view_model.dart';

RouteFactory router() {
  return (RouteSettings settings) {
    Widget screen;
    TodoViewModel todoViewModel = TodoViewModel();
//    if (currentRoot == 1) {
//      currentRoot = 2;
//
//      screen = BlocProvider(
//          create: (context) => locator<SplashBloc>()..add(GetAllRolesEvent()),
//          child: SplashScreen());
//    }
    final args = settings.arguments as Map<String, dynamic> ?? {};

    // todo:  add screen route here
    switch (settings.name) {
      case RouteList.todoList:
        screen = BaseWidget<TodoViewModel>(
            createViewModel: todoViewModel,
            builder: (context, viewModel, child) {
              return TodoListScreen(viewModel: viewModel);
            });
        break;
      case RouteList.createTodo:
        screen = CreateTodoScreen(viewModel: args['todoViewModel']);
        break;
      case RouteList.login:
        screen = LoginScreen();
        break;
    }

    return CupertinoPageRoute(
      builder: (context) {
        ScreenUtil.init(context);
        return screen;
      },
    );
  };
}