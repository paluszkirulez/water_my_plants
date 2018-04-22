import 'package:flutter/material.dart';

class NewPlantScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Add new plant to your collection",softWrap: true, maxLines: 2, textDirection: TextDirection.rtl,),
    ),
      backgroundColor: Colors.lightGreen,
    );
  }

}