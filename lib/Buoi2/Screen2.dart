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
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child:
            Column(

                children: <Widget>[
                  Expanded(flex: 1, child: Container()),
          Expanded(
flex: 2,
            child: Container(
    margin: EdgeInsets.all(10.0),


                decoration: new BoxDecoration(

                    image: DecorationImage(
                  image: AssetImage('images/screen3.png'),
                )),
            ),
          ),
          Expanded(

            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top:20),
margin: EdgeInsets.only(bottom: 20),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween
              ,

                children:
                <Widget>[

                  Text(
                    "Get The Fastest\nDeleviery Food For You",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Order food and get delevery in the fastest\ntime in the town",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
              //Expanded(flex: 1, child: Container()),

         Container(
                color: Colors.white,
             padding: EdgeInsets.only(bottom:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(

                      decoration: BoxDecoration(
                        color: Colors.yellow,

                          ),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("Get started  >>",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20))
                        ],
                      ),
                    ),

                  ],
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
          color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
      textAlign: TextAlign.start);
}
