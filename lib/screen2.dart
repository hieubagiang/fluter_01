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
      home: MyHomePage(title: 'Protiaa'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 58, 69, 88),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0, // Remove shadow
          title: Text(title,
              style: new TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0)),
          actions: <Widget>[
            new Container(
                decoration: new BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage('images/img.jpg'),
                        fit: BoxFit.cover)),
                padding: EdgeInsets.all(22),
                margin: EdgeInsets.only(right: 10.0, top: 5.0, bottom: 5.0))
          ],
        ),
        body: Column(children: [
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white30, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 25.0, top:10, right: 25, bottom: 0),
              child: Row(
                children: <Widget>[
                  Container(
                      child: Icon(Icons.search, color: Colors.white, size: 30),
                      margin: const EdgeInsets.only(right: 10)),
                  Text("search...",
                      style: TextStyle(color: Colors.white60, fontSize: 25))
                ],
              )),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 7), // changes position of shadow
                  ),
                ],
                gradient: LinearGradient(
                    stops: [0, .4, 1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.pink[200], Colors.pinkAccent, Colors.red])),
            child: Column(children: [
              Icon(Icons.language, size: 65, color: Colors.white),
              Text('Dribbble',
                  style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold)),
              Text('@realvjy',
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white30, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    Text("123 ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Expanded(
                        child: Text("shots",
                            style:
                            TextStyle(fontSize: 20, color: Colors.white))),
                    Text("add new",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ]),
          )
,Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 7), // changes position of shadow
                  ),
                ],
                gradient: LinearGradient(
                    stops: [0, .4, 1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue[200], Colors.lightBlue, Colors.blue])),
            child: Column(children: [
              Text('Be',
                  style: TextStyle(fontSize: 60, color: Colors.white)),
              Text('Behance',
                  style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold)),
              Text('@realvjy',
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white30, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    Text("207 ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Expanded(
                        child: Text("posts",
                            style:
                            TextStyle(fontSize: 20, color: Colors.white))),
                    Text("add new",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ]),
          )

        ]));
  }
  }
