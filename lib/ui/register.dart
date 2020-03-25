import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RegisterState();
  }
}

class RegisterState extends State {
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _lNameController = new TextEditingController();
  final TextEditingController _phoneController = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _rePasswordController =
      new TextEditingController();

  _validateData() {
    setState(() {
      debugPrint('Name Controller');
    });
  }

  _goBack() {
    setState(() {
      debugPrint('Go Back');
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Register"),
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(10.0)),
            new Image.asset(
              "images/logo.png",
              width: 90.0,
              height: 89.0,
            ),
            new Padding(padding: new EdgeInsets.all(10.0)),

            /*Form*/
            new Container(
              width: 380,
              height: 180,
              child: new Column(children: <Widget>[
                new TextField(
                    controller: _nameController,
                    decoration: new InputDecoration(
                        hintText: 'First Name', icon: new Icon(Icons.details))),
                new TextField(
                  controller: _lNameController,
                  decoration: new InputDecoration(
                      hintText: 'Last Name', icon: new Icon(Icons.details)),
                ),
                new TextField(
                    controller: _emailController,
                    decoration: new InputDecoration(
                        hintText: 'Email', icon: new Icon(Icons.email))),
                new TextField(
                    controller: _phoneController,
                    decoration: new InputDecoration(
                        hintText: 'Phone', icon: new Icon(Icons.phone))),
                new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                        hintText: 'Password', icon: new Icon(Icons.lock))),
                new TextField(
                    controller: _rePasswordController,
                    decoration: new InputDecoration(
                        hintText: 'Re-password', icon: new Icon(Icons.lock))),
                new Padding(padding: new EdgeInsets.all(10.0)),
                new Center(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(left: 38.0),
                        child: new RaisedButton(
                          onPressed: _validateData,
                          color: Color.fromRGBO(170, 170, 255, 1),
                          child: new Text('Register',
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 16.9)),
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(left: 120.0),
                        child: new RaisedButton(
                          onPressed: _goBack,
                          color: Color.fromRGBO(170, 170, 255, 1),
                          child: new Text('Login',
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 16.9)),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
