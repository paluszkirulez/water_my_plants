import 'package:flutter/material.dart';

class AllPlantsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("My plants",softWrap: true, maxLines: 2, textDirection: TextDirection.rtl,),
      ),
      backgroundColor: Colors.lightGreen,

      // to add calendar app
    );
  }

}