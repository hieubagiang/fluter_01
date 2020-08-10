import 'package:flutter/material.dart';
import 'package:flutter_01/Buoi4_Provider/ex51/view_model/login_screen_view_model.dart';
import 'package:flutter_01/Buoi4_Provider/ui/widget/base_widget.dart';

class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Form(
        child: BaseWidget<LoginScreenViewModel>(
            createViewModel: LoginScreenViewModel(),
          builder: (context, viewModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'email'
                  ),
                  onChanged: (value) {
                    viewModel.email = value;
                    debugPrint('email: ${viewModel.email}');
                  },
                ),
                TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'password'
                  ),
                  onChanged: (value) {
                    viewModel.password = value;
                    debugPrint('password: ${viewModel.password}');
                  },
                ),
                RaisedButton(onPressed: () => _btnSignInOnPress(viewModel),
                child: Text('Sign In'),)
              ],
            );
          }
        ),
      ),
    );
  }

  _btnSignInOnPress(LoginScreenViewModel viewModel) {
    viewModel.login();
  }

}