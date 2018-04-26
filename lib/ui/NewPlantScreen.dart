import 'package:flutter/material.dart';
import '../functionalities/Plant.dart';


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


  List<TextEditingController> _plantInfo = [_plantName,_plantFamily,_plantInsolation,_plantWatering,_plantDate];
  void _erase() {
    setState(() {
      _plantInfo.forEach((element)=>element.clear());
      //debugPrint("cleared");
    }
    );
  }
  Plant myNewPlant;
  Plant _create(){
    //debugPrint(_plantWatering.text.toString());
    Plant myNewPlant = new Plant(_plantName.text.toString(),_plantDate.text.toString(),_plantFamily.text.toString(),_plantInsolation.text.toString(),int.parse(_plantWatering.text.toString()));
    debugPrint(myNewPlant.toString());
    _erase();
    return myNewPlant;
    Scaffold.of

  }

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
        body:new Stack(
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
              new Container(
                  alignment: Alignment.topCenter,
                  child: new ListView(
                      children: <Widget>[
                        /*new Padding(padding: const EdgeInsets.all(15.0)),
                        new Image.asset(
                          'images/plant.png',
                          width: 90.0,
                          height: 90.0,
                          color: Colors.green,
                        ),*/
                        new Padding(padding: const EdgeInsets.all(20.0)),
                        new Container (
                          margin: EdgeInsets.all(5.0),
                          height: 400.0,

                          //color: Colors.transparent,
                          decoration: new BoxDecoration(
                              color: new Color.fromRGBO(255, 255, 255 , 0.8)

                          ),
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
                                keyboardType: TextInputType.numberWithOptions(signed: false, decimal: false),
                              ),
                              new Padding(padding: const EdgeInsets.all(10.0)),
                              new Padding(padding: const EdgeInsets.all(15.0)),
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                      margin: const EdgeInsets.only(left:10.0),
                                      child: new RaisedButton(
                                          onPressed: ()=>_create(),
                                          color: Colors.green,
                                          child: new Text("Add plant",
                                              style: new TextStyle(color: Colors.white, fontSize: 16.9
                                              )
                                          ),
                                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(32.0))
                                      )
                                  ),
                                  new Container(
                                      margin: const EdgeInsets.only(left:90.0),
                                      child: new RaisedButton(
                                          onPressed: ()=>_erase(),
                                          color: Colors.green.shade500,
                                          child: new Text("Clear",
                                              style: new TextStyle(color: Colors.white, fontSize: 16.9
                                              )
                                          ),
                                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(32.0))
                                      )
                                  )
                                ],
                              )
                            ],
                          ),


                        ),
                        new Padding(padding: const EdgeInsets.all(15.0)),

                      ]


                  )

              ),
            ]

        )


        // for container -
        //resizeToAvoidBottomPadding: false,

    )
    ;
  }
}

