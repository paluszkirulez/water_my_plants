import 'package:flutter/material.dart';

/*class NewPlantScreen extends StatelessWidget{
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

}*/
class NewPlantScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PlantScreen();
  }

}

final TextEditingController _plantName = new TextEditingController();
final TextEditingController _plantFamily = new TextEditingController();
final TextEditingController _plantInsolation = new TextEditingController();
final TextEditingController _plantWatering = new TextEditingController();
final TextEditingController _plantDate = new TextEditingController();

class PlantScreen extends State<NewPlantScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text("New plant adding", softWrap: true,
            maxLines: 2,
            textDirection: TextDirection.rtl,),
        ),
        backgroundColor: Colors.lightGreen,
        body: new Container(
            alignment: Alignment.topCenter,
            child: new Column(
                children: <Widget>[
                  new Padding(padding: const EdgeInsets.all(15.0)),
                  new Image.asset(
                    'images/plant.png',
                    width: 90.0,
                    height: 90.0,
                    color: Colors.green,
                  ),
                  new Padding(padding: const EdgeInsets.all(15.0)),
                  new Container(
                      height: 400.0,
                      color: Colors.lightGreen.shade200,
                      child: new Column(
                        children: <Widget>[
                          new Padding(padding: const EdgeInsets.all(5.0)),
                          new TextField(
                            controller: _plantName,
                            decoration: new InputDecoration(
                                hintText: 'Name of the plant',
                                prefixIcon: new Image.asset(
                                  'images/plant.png',
                                  width: 30.0,
                                  height: 30.0,
                                  color: Colors.green,
                                  alignment: Alignment.centerLeft,
                                  //centerSlice: Rect.fromLTRB(10.0, 10.0, 10.0, 10.0),
                                ),
                            isDense: false,
                            ),
                          ),
                          new Padding(padding: const EdgeInsets.all(10.0)),
                          new TextField(
                            controller: _plantDate,
                            decoration: new InputDecoration(
                              hintText: 'Planted - date',
                              prefixIcon: new Icon(Icons.calendar_today, color: Colors.green),
                              isDense: false,
                            ),
                          ),
                          new Padding(padding: const EdgeInsets.all(10.0)),
                          new TextField(
                            controller: _plantFamily,
                            decoration: new InputDecoration(
                              hintText: 'Plant family',
                              prefixIcon: new Icon(Icons.people, color: Colors.green),
                              isDense: false,
                            ),
                          ),
                          new Padding(padding: const EdgeInsets.all(10.0)),
                          new TextField(
                            controller: _plantInsolation,
                            decoration: new InputDecoration(
                              hintText: 'Insolation',
                              prefixIcon: new Icon(Icons.wb_sunny, color: Colors.green),
                              isDense: false,
                            ),
                          ),
                          new Padding(padding: const EdgeInsets.all(10.0)),
                          new TextField(
                            controller: _plantWatering,
                            decoration: new InputDecoration(
                              hintText: 'How often should be watered? Give number of days',
                              prefixIcon: new Icon(Icons.invert_colors, color: Colors.green),
                              isDense: false,
                            ),
                          ),
                          new Padding(padding: const EdgeInsets.all(10.0)),
                          new Padding(padding: const EdgeInsets.all(15.0)),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Container(
                                margin: const EdgeInsets.only(left:10.0),
                                child: new RaisedButton(
                                    onPressed: ()=>debugPrint("pressed"),
                                    color: Colors.green,
                                    child: new Text("Add plant",
                                                  style: new TextStyle(color: Colors.white, fontSize: 16.9
                                                    )
                                    )
                                )
                              ),
                              new Container(
                                  margin: const EdgeInsets.only(left:90.0),
                                  child: new RaisedButton(
                                      onPressed: ()=>debugPrint("clear"),
                                      color: Colors.green.shade500,
                                      child: new Text("Clear",
                                          style: new TextStyle(color: Colors.white, fontSize: 16.9
                                          )
                                      )
                                  )
                              )
                            ],
                          )
                        ],
                      )

                  ),
                  new Padding(padding: const EdgeInsets.all(15.0)),

                ]
            )

        )
    )
    ;
  }
}

