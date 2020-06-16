import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../ui_constructor.dart';
class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    //Create Button SignIn
    Widget buttonSignIn = Stack(
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
        Positioned(
          top: -34,
          right: 40,
          child: _createSignInButton(),
        )
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
                padding: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "Welcome back,",
                      style: bigtext,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: 'Email'),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(hintText: 'Password'),
                      obscureText: true,
                    ),
                    SizedBox(height: 40.0),
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
                      height: 120.0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: backgroundColors,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: backgroundColors,
                      child: FlatButton(
                        child: Text(
                          'Forgot password',
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Spacer()
                ],
              ),
            ),
            buttonSignIn,
          ],
        ),
      ),
    );
  }

  Widget _createSignInButton() {
    return SizedBox(
      width: 68,
      height: 68,
      child: RaisedButton(
        onPressed: () {},
        elevation: 0,
        color: lightPinkColor,
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