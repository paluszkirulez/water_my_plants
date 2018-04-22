import 'package:flutter/material.dart';
//import '../functionalities/Plant.dart';
import 'NewPlantScreen.dart';
import 'CalendarScreen.dart';
import 'AllPlantsScreen.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("ZaroSla - water my plants",softWrap: true, maxLines: 2, textDirection: TextDirection.rtl,),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.print),
              onPressed: () => debugPrint("Icone tapped")),
          new IconButton(
              icon: new Icon(Icons.notifications_none),
              onPressed: () => debugPrint("Second tap"))

        ],
      ),
      backgroundColor: Colors.lightGreen,
      floatingActionButton: new FloatingActionButton(
        //onPressed: () => PlantCreate("Monsterka","Monstera", new DateTime.now(), "big leafs", "medium", 2),
        onPressed: (){
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new NewPlantScreen()),
          );
      },
        backgroundColor: Colors.green.shade600,
        tooltip: "Check what you can add",
        child: new Icon(Icons.add_circle,color: Colors.white,),
      ),
      drawer: new Drawer(
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

      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
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


        ),
    );
  }

}