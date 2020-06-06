import 'package:flutter/cupertino.dart';
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
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Preview'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: new EdgeInsets.only(left: 10),
        color: Colors.yellow,
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Communication,\nSociety and\nMedia",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Divider(
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                child: Row(
              children: [
                Text("20",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: textGroup(),
                  ),
                ),
              ],
            )),
          ),
          Expanded(
            flex: 2,

            child: Container(
            color: Colors.red,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Container(

                      child: Text("54",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 150,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      //mainAxisAlignment: MainAxisAlignment.end,
                      child:
                        Text("%",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),

                    ),
                  ],
                )),
          ),
                    Expanded(
    flex: 1,

    child: Container(

    )),
    ]),
      )),
    );
  }

  Widget textGroup() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _baseText('Although the 10 milion inviduals'),
          _baseText('who use dateing apps daily login'),
          _baseText('an average off 11 times and spend'),
          _baseText('approximately 1.25 hours on the'),
          _baseText('app, the majority do not meet face'),
          _baseText('to face (Lee,2015:Real,2015)'),
        ],
      );

  Widget _baseText(String title) => Text('$title',
      style: TextStyle(
          color: Colors.black, fontSize: 12 , fontWeight: FontWeight.bold),
      textAlign: TextAlign.start);
}
