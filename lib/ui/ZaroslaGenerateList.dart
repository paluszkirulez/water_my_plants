import 'package:flutter/material.dart';
import '../functionalities/JsonParse.dart';

class ZaroslaGenerateList extends StatelessWidget{
  List myPage = printJson() as List;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lengthJson() as int,
        padding: const EdgeInsets.all(15.4),
        itemBuilder: (BuildContext context, int position){
          return new ListTile(
              title: new Text(myPage[position]['title']['rendered']),
          );
    }
    );
  }

}