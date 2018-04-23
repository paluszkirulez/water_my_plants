import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }

}

final TextEditingController _nameFieldText = new TextEditingController();

class LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Login page",softWrap: true, maxLines: 2, textDirection: TextDirection.rtl,),
      ),
      backgroundColor: Colors.lightGreen,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            new Image.asset(
              'images/loginPerson.png',
              width: 90.0,
              height: 90.0,
            ),
            new Container(
              height: 180.0,
              color: Colors.lightGreen.shade100,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _nameFieldText,
                    decoration: new InputDecoration(hintText: 'your name',
                    icon: new Icon(Icons.person)),
                  )
                ],
              )
            ),
              ]
            )

        )
      )
    ;
  }

}