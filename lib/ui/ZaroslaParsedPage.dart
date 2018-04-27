import 'package:flutter/material.dart';
//import 'package:small_calendar/small_calendar.dart';

class CalendarScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text("Zarosla.pl",softWrap: true, maxLines: 2, textDirection: TextDirection.rtl,),
        ),
        backgroundColor: Colors.lightGreen,
        body: new Column(
          children: <Widget>[
            
          ],
        )


    );
  }

}