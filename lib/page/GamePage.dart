import 'package:brain_response_6010613518/backend/brain.dart';
import 'package:brain_response_6010613518/widget/myGame.dart';
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
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: myContainer(
        path: 'public/TestBG.png',
        myWidget: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: h/4,
                //color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: h/20,),
                        child: myTextQuickSand(word: mainGame.getMode(),col: Colors.amber,size: 50.0,)
                    ),
                    myTextQuickSand(word: "0.00",col: Colors.greenAccent,size: 50.0,),
                  ],
                ),
              ),
              Container(
                width: w,
                height: h/2,
                child: myGameGenerator(
                  g: mainGame,
                  w: w,
                  h: h/2,
                ),
              ),
              Container(
                height: h/4,
                //color: Colors.greenAccent,
              )

            ],
          ),
        ),
      ),
    );
  }
}