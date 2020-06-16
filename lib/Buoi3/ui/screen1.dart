import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  GlobalKey<FormState> _textFormKey = GlobalKey<FormState>();
  String fullName, emailID,passWord;
  String phoneNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final fullNameField= Container(
      margin: EdgeInsets.all(5),
      child: TextFormField(
        obscureText: false,
        // Password
        style: TextStyle(
          color: Colors.blue,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: "Full Name",
          hintStyle:
          TextStyle(color: Colors.black12, fontSize: 20),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.black12, width: 2),
              borderRadius: BorderRadius.circular(40)),
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.blue, width: 2),
              borderRadius:
              BorderRadius.all(Radius.circular(40))),
        ),
        validator: (value) {
          if (value.isEmpty) return 'Not Null';
          return null;
        },
        onSaved: (value) => fullName=value,
//      onChanged: (value) {
//        count++;
//        setState(() {});
//      },
      ),
    );
    final phoeNumberField= Container(
      margin: EdgeInsets.all(5),
      child: TextFormField(
        obscureText: false,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: "Phone Number",
          hintStyle:
          TextStyle(color: Colors.black12, fontSize: 20),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.black12, width: 2),
              borderRadius: BorderRadius.circular(40)),
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.blue, width: 2),
              borderRadius:
              BorderRadius.all(Radius.circular(40))),
        ),
        validator: (value) {
          if (value.isEmpty) return 'Not Null';
          return null;
        },
        onSaved: (value) => phoneNumber=value,
//      onChanged: (value) {
//        count++;
//        setState(() {});
//      },
      ),
    );
    final emailIDField= Container(
      margin: EdgeInsets.all(5),
      child: TextFormField(
        obscureText: false,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: "Email ID",
          hintStyle:
          TextStyle(color: Colors.black12, fontSize: 20),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.black12, width: 2),
              borderRadius: BorderRadius.circular(40)),
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.blue, width: 2),
              borderRadius:
              BorderRadius.all(Radius.circular(40))),
        ),
        validator: (value) {
          if (value.isEmpty) return 'Not Null';
          return null;
        },
        onSaved: (value) => emailID=value,
//      onChanged: (value) {
//        count++;
//        setState(() {});
//      },
      ),
    );
    final passWordField= Container(
      margin: EdgeInsets.all(5),
      child: TextFormField(
        obscureText: false,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: "Password",
          hintStyle:
          TextStyle(color: Colors.black12, fontSize: 20),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.black12, width: 2),
              borderRadius: BorderRadius.circular(40)),
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.blue, width: 2),
              borderRadius:
              BorderRadius.all(Radius.circular(40))),
        ),
        validator: (value) {
          if (value.isEmpty) return 'Not Null';
          return null;
        },
        onSaved: (value) => passWord=value,
//      onChanged: (value) {
//        count++;
//        setState(() {});
//      },
      ),
    );
    return Scaffold(

      body: SafeArea(

          child: Container(
            color: Colors.purple,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  color: Colors.purple,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("PUNCH",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                      Text("Punch - Earn - Repeat",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Container(

                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white30, width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(25))),


                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Container(

                                      child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 30),
                                      margin: const EdgeInsets.only(right: 10)),
                                  Expanded(
                                    child: Container(

                                      alignment: Alignment.center,
                                      margin: const   EdgeInsets.all(10),
                                      child: Text("Sign Up",
                                          style: TextStyle(
                                              fontSize: 30, fontWeight: FontWeight.bold)),
                                    ),
                                  ),
                                ],
                              ),

                              Container(
                                child: Form(
                                  key: _textFormKey,
                                child: Column(

                                  children: <Widget>[
                                   fullNameField,
                                    phoeNumberField,
                                    emailIDField,
                                    passWordField
                                  ],
                                ),
                              ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                child: RaisedButton(

                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.black)),
                                  onPressed: () => onPress(context),
                                  child: Text('Create an account',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                  ),),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),

      ),
    );
  }

  void onPress(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode());
    if (_textFormKey.currentState.validate()) {
      _textFormKey.currentState.save();
      print(fullName);
      print(phoneNumber);
      print(passWord);
      print(emailID);
      setState(() {});
    }
  }
}
