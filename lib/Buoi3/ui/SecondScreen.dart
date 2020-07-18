import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  GlobalKey<FormState> _textFormKey = GlobalKey<FormState>();
  String firstName, email,passWord;
  String lastName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final firstNameField= Container(
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
          labelText: "First Name",
          hintStyle:
          TextStyle(color: Colors.black12, fontSize: 20),
          prefixIcon: Icon(Icons.account_circle)
        ),
        validator: (value) {
          if (value.isEmpty) return 'Not Null';
          return null;
        },
        onSaved: (value) => firstName=value,
//      onChanged: (value) {
//        count++;
//        setState(() {});
//      },
      ),
    );
    final lastNameField= Container(
      margin: EdgeInsets.all(5),
      child: TextFormField(
        obscureText: false,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: "Last Name",
          hintStyle:
          TextStyle(color: Colors.black12, fontSize: 20),
            prefixIcon: Icon(Icons.account_circle)
        ),
        validator: (value) {
          if (value.isEmpty) return 'Not Null';
          return null;
        },
        onSaved: (value) => lastName=value,
//      onChanged: (value) {
//        count++;
//        setState(() {});
//      },
      ),
    );
    final emailField= Container(
      margin: EdgeInsets.all(5),
      child: TextFormField(
        obscureText: false,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: "Email",
          hintStyle:
          TextStyle(color: Colors.black12, fontSize: 20),
          prefixIcon: Icon(Icons.email)
        ),
        validator: (value) {
          if (value.isEmpty) return 'Not Null';
          return null;
        },
        onSaved: (value) => email=value,
//      onChanged: (value) {
//        count++;
//        setState(() {});
//      },
      ),
    );
    final passWordField= Container(
      margin: EdgeInsets.all(5),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: "Password",
          hintStyle:
          TextStyle(color: Colors.black12, fontSize: 20),
          prefixIcon: Icon(Icons.computer)
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                height: 120,
                color: Colors.purple,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.bottomLeft,
                        child: Icon(Icons.keyboard_arrow_up, color: Colors.blue, size: 30),
                        margin: const EdgeInsets.only(right: 10)),
                    Text("Tenant",
                        style: TextStyle(

                          color: Colors.blue,
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
                            Container(

                              alignment: Alignment.centerLeft,
                              margin: const   EdgeInsets.all(10),
                              child: Text("Create Account",
                                  style: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.bold)),
                            ),

                            Container(
                              child: Form(
                                key: _textFormKey,
                                child: Column(

                                  children: <Widget>[
                                    firstNameField,
                                    lastNameField,
                                    emailField,
                                    passWordField
                                  ],
                                ),
                              ),
                            ),
                        creatAccountButton(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Already have an account?',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14
                            )
                            ),
                                Text('Sign in?',style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontSize: 14
                                    ,fontWeight: FontWeight.bold
                                )
                                ),
                          ],
                        ),
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

  Widget creatAccountButton()
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        color: Colors.blue,
        shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide(color: Colors.blueAccent)),
        onPressed: () => onPress(context),
        child: Text('Submit',style: TextStyle(
            color: Colors.white,
            fontSize: 18
        ),
        ),
      ),
    );
  }
  void onPress(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode());
    if (_textFormKey.currentState.validate()) {
      _textFormKey.currentState.save();
      print(firstName);
      print(lastName);
      print(passWord);
      print(email);
      setState(() {});
    }
  }
}
