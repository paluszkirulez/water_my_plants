import 'package:flutter/material.dart';
import 'package:zarosla_water_my_plants/ui/MyBottomList.dart';
import '../functionalities/Plant.dart';
//import 'NewPlantScreen.dart';
//import 'CalendarScreen.dart';
//import 'AllPlantsScreen.dart';
import 'MainDrawer.dart';
import 'Experimental/LoginPage.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("ZaroSla - water my plants",softWrap: true, maxLines: 2, textDirection: TextDirection.rtl,),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.person),
              //onPressed: () => debugPrint("Icone tapped")),
              onPressed: (){
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Login()),
                );
              }),
          new IconButton(
              icon: new Icon(Icons.notifications_none),
              onPressed: () => debugPrint("Second tap"))

        ],
      ),
      backgroundColor: Colors.lightGreen,
        body:
        new Stack(
            fit: StackFit.expand,
            children: <Widget>[
              new Image.asset('images/monster_wallpaper.jpg',
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
      ,
      drawer: new MainDrawer(),
      bottomNavigationBar: new MyBottomList(),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => PlantCreate("Monsterka","Monstera", new DateTime.now().toString(), "big leafs", "medium", 2),

        backgroundColor: Colors.green.shade600,
        tooltip: "Check what you can add",
        child: new Icon(Icons.add_circle,color: Colors.white,),
      ),
    );
  }

}