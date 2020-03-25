import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _welcomeString = "";

  _loginBtn() {
    setState(() {
      if (_userController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        this._welcomeString = _userController.text;
      }
    });
  }

  _resetInputs() {
    setState(() {
      this._userController.clear();
      this._passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 249, 1),
        appBar: new AppBar(
          title: new Text("Login"),
          backgroundColor: Color.fromRGBO(170, 170, 255, 1),
        ),
        body: new Container(
          child: new ListView(
            children: <Widget>[
              new Padding(padding: new EdgeInsets.all(10.0)),
              new Image.asset(
                "images/logo.png",
                width: 90.0,
                height: 90.0,
              ),
              new Padding(padding: new EdgeInsets.all(10.0)),

              //form
              new Container(
                height: 180.0,
                width: 380.0,
                color: Color.fromRGBO(252, 168, 248, 1),
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Colors.blueGrey, spreadRadius: 3),
                    ]),
                child: new Column(
                  children: <Widget>[
                    //username field
                    new TextField(
                      controller: _userController,
                      decoration: new InputDecoration(
                          hintText: 'Username', icon: new Icon(Icons.person)),
                    ),

                    //user password field
                    new TextField(
                      controller: _passwordController,
                      decoration: new InputDecoration(
                          hintText: 'Password', icon: new Icon(Icons.lock)),
                      obscureText: true,
                    ),

                    /*buttons*/
                    new Padding(padding: new EdgeInsets.all(10.5)),
                    new Center(
                        child: new Row(
                      children: <Widget>[
                        new Container(
                            margin: const EdgeInsets.only(left: 38.0),
                            child: new RaisedButton(
                                onPressed: _resetInputs,
                                color: Color.fromRGBO(170, 170, 255, 1),
                                child: new Text("Clear",
                                    style: new TextStyle(
                                        color: Colors.white, fontSize: 16.9)))),
                        new Container(
                            margin: const EdgeInsets.only(left: 120.0),
                            child: new RaisedButton(
                                onPressed: _loginBtn,
                                color: Color.fromRGBO(170, 170, 255, 1),
                                child: new Text(
                                  "Login",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 16.9),
                                )))
                      ],
                    ))
                  ],
                ),
              ),

              new Padding(padding: new EdgeInsets.all(10.6)),

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Welcome, $_welcomeString",
                    style: new TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 19.4,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
