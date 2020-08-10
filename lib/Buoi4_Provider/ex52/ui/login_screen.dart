import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_01/Buoi4_Provider/ex52/view_model/login_screen_view_model.dart';
import 'package:flutter_01/Buoi4_Provider/ui/widget/base_widget.dart';

class SecondLoginScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Form(
        child: BaseWidget<SecondLoginScreenViewModel>(
            createViewModel: SecondLoginScreenViewModel(),
            builder: (context, viewModel, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[


//                    onChanged: (value) {
//                      viewModel.password = value;
//                      debugPrint('password: ${viewModel.password}');
//
                  Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Row(

                          children: <Widget>[
                            Icon(Icons.location_on, size: 20),
                            Container(
                              width:  200,
                              child: DropdownButton<String>(

                                value: viewModel.location,

                                style: TextStyle(color: Colors.deepPurple),

                                onChanged: (String newValue) {
                                  viewModel.location = newValue;

//              setState(() {
//              dropdownValue = newValue;
//              });
                                },
                                items: <String>[
                                  'Location',
                                  'Hà Nội',
                                  'Hà Tĩnh',
                                  'Hưng Yên'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      )),
                  RaisedButton(
                    onPressed: () => _btnSignInOnPress(viewModel),
                    child: Text('Continue'),
                  )
                ],
              );
            }),
      ),
    );
  }

  _btnSignInOnPress(SecondLoginScreenViewModel viewModel) {
    viewModel.login();
  }
}
