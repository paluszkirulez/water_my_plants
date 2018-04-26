import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';


class CalendarScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text("Plants callendar",softWrap: true, maxLines: 2, textDirection: TextDirection.rtl,),
        ),
        backgroundColor: Colors.lightGreen,
        body:
        new Stack(
            fit: StackFit.expand,
            children: <Widget>[
              new Image.asset('images/tomatos.jpg',
                  fit: BoxFit.cover, alignment: new AlignmentDirectional(0.2, 0.0)),
              new Container(
                decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0x00FFFFFF),
                          const Color(0x00FFFFFF),
                          const Color(0xBBFFFFFF),
                          const Color(0xBBFFFFFF),
                          const Color(0xBBFFFFFF)
                        ],
                        stops: [
                          0.0,0.30,0.7, 0.75,0.8
                        ]
                    )

                ),
              ),
              
            ]

        )


    );
  }

}