import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.green.shade400,
            title: new Text("Zarosla menu")

        ),
        backgroundColor: Colors.lightGreen.shade400,
        //body: new Text("my text", textDirection: TextDirection.ltr,),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.calendar_today),
              title: new Text('Calendar'),
            ),
            new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text('Photo Album'),
            ),
            new ListTile(
              leading: new Icon(Icons.web),
              title: new Text('zarosla.pl'),
            ),
          ],
        ),
      ),

    );
  }

}