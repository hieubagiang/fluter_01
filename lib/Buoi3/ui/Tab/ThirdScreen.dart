import 'package:flutter/material.dart';
import 'package:flutter_01/ui_constructor.dart';

import 'SignInPage.dart';
import 'SignUpPage.dart';

void main() => runApp(new ThirdScreen());

class ThirdScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'ThirdScreen',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        right: false,
        left: false,
        child: Container(
          color: backgroundColors,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Container(

                          child: Icon(
                              Icons.account_circle, color: Colors.pink, size: 30),
                          margin: const EdgeInsets.only(right: 10)),),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: TabBar(
                              controller: _tabController,
                              isScrollable: true,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorColor: Color.fromRGBO(170, 168, 171, 1),
                              tabs: <Widget>[
                                Container(
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      "Sign In",
                                      style: smallText,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "Sign Up",
                                    style: smallBoldText,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  color: lightGrayColor,
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      SignInPage(),
                      SignUpPage(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}