import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../ui_constructor.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    //Create Button Sign Up
    Widget buttonSignUp = Stack(
      overflow: Overflow.visible,
      alignment: Alignment.topRight,
      children: <Widget>[
        Positioned(
          child: Container(
            height: 80,
            width: double.infinity,
            color: lightGrayColor,
            child: Container(
              width: 40,
              height: 5,
            ),
          ),
        ),
        Positioned(top: -34, right: 40, child: _createSignUpButton())
      ],
    );

    return Container(
      color: lightGrayColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: backgroundColors,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Hello',
                          style: bigtext,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Beautiful,',
                          style: bigtext,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Enter your informations below or login with a socia accnout',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Email address"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Password again"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.tag_faces,
                            size: 40,
                            color: Colors.red,
                          ),
                          onPressed: () {      print("Pressed");},
                        ),
                        IconButton(
                            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                            icon: FaIcon(Icons.email,size: 40,
                              color: Colors.red,),
                            onPressed: () {
                              print("Pressed");
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 68.0,
                    ),
                  ],
                ),
              ),
            ),
            buttonSignUp,
          ],
        ),
      ),
    );
  }

  Widget _createSignUpButton() {
    return SizedBox(
      width: 68,
      height: 68,
      child: RaisedButton(
        onPressed: () {},
        elevation: 0,
        color: lightBlueColor,
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
