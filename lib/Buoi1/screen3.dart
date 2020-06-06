import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'protiaa'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Container(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 40),
          decoration: BoxDecoration(
              color: Colors.pinkAccent
          ),
          child: Column(
            children: <Widget>[
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Text("Track your work and get results.",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Text(
                    "Structure work in a way that's best for you. Set priorities. Share details and assign tasks.",
                    style: TextStyle(color: Colors.white)),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                        "Skip",
                        textAlign: TextAlign.right,
                      ))
                ],
              )
            ],
          ),
        ));
  }
}