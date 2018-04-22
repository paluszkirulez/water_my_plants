import 'package:flutter/material.dart';
import 'AllPlantsScreen.dart';
import 'CalendarScreen.dart';
import 'NewPlantScreen.dart';

class MyBottomList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      new BottomNavigationBarItem(icon: new Icon(Icons.add), title: new Text("Dodaj roślinę")),
      new BottomNavigationBarItem(icon: new Icon(Icons.cake), title: new Text("Sprawdz kalendarz")),
      new BottomNavigationBarItem(icon: new Icon(Icons.exit_to_app), title: new Text("idź do roślin")),
    ],
      fixedColor: Colors.lightGreen.shade500,
      onTap: (int) {
        if(int == 0){
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new NewPlantScreen()),
          );
        }
        else if(int == 1){
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new CalendarScreen()),
          );
        }
        else if(int == 2){
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new AllPlantsScreen()),
          );
        }
        else null;
      },


    );
  }


}