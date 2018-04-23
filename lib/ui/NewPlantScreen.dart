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
                  new Image.asset(
                    'images/plant.png',
                    width: 90.0,
                    height: 90.0,
                    color: Colors.green,
                  ),
                  new Container(
                      height: 180.0,
                      color: Colors.lightGreen.shade200,
                      child: new Column(
                        children: <Widget>[
                          new TextField(
                            controller: _plantName,
                            decoration: new InputDecoration(
                                hintText: 'Name of the plant',
                                prefixIcon: new Image.asset(
                                  'images/plant.png',
                                  width: 30.0,
                                  height: 30.0,
                                  color: Colors.green,
                                  alignment: Alignment.centerRight,
                                  //centerSlice: Rect.fromLTRB(10.0, 10.0, 10.0, 10.0),
                                ),
                            isDense: false,
                            ),
                          )
                        ],
                      )
                  ),
                ]
            )

        )
    )
    ;
  }
}

