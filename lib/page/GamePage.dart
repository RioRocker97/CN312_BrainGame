import 'package:brain_response_6010613518/backend/brain.dart';
import 'package:brain_response_6010613518/widget/myWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget{
  GamePage({this.game});
  Brain game;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GamePageState(mainGame : game);
  }
}
class GamePageState extends State<GamePage>{
  GamePageState({this.mainGame});
  Brain mainGame;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: myContainer(
        path: 'public/TestBG.png',
        myWidget: Center(
          child: Column(
            children: <Widget>[
              myTextQuickSand(word: mainGame.getMode(),col: Colors.amber,size: 50.0,)
            ],
          ),
        ),
      ),
    );
  }
}