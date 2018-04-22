import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Plants callendar",softWrap: true, maxLines: 2, textDirection: TextDirection.rtl,),
      ),
      backgroundColor: Colors.lightGreen,
    );
  }

}