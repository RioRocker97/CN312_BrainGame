import 'package:brain_response_6010613518/backend/routing.dart';
import 'package:brain_response_6010613518/widget/myWidget.dart';
import 'package:brain_response_6010613518/backend/brain.dart';
import 'package:flutter/cupertino.dart';
import 'dart:core';

class myGameGenerator extends StatefulWidget{
  myGameGenerator({this.g,this.w,this.h});
  Brain g;
  double h;
  double w;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mainGameState(game:g,wide:w,high:h);
  }
}
class mainGameState extends State<myGameGenerator>{
  mainGameState({this.game,this.wide,this.high});
  Brain game;
  double high;
  double wide;
  Stopwatch myTimer = new Stopwatch();
  void onTapE(int x,int y){
    game.playBrain(x,y);
    if(game.pos == 2){myTimer.start();print(myTimer.isRunning);}
    print(myTimer.elapsed.inMilliseconds/1000.0);
    if(game.playBrainStatus() == false){
      myTimer.stop();
      game.setCurrentTime(myTimer.elapsed.inMilliseconds/1000.0);
      EndRoute(context, 1,t: game.getCurrentTime(),m: game.getModeInt());
    }
    else{
      game.setCurrentTime(myTimer.elapsed.inMilliseconds/1000.0);
      var a = game.getCurrentTime();
      print(game.getCurrentTime());
    }
  }
  @override
  Widget build(BuildContext context) {
    if(game.getMode()=='4'){
      return Container(
        width: wide,
        height: high,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(1,1),event: (){setState(() {onTapE(1,1);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(1,2),event: (){setState(() {onTapE(1,2);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(1,3),event: (){setState(() {onTapE(1,3);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(1,4),event: (){setState(() {onTapE(1,4);});},w: wide/4,h: high/4,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(2,1),event: (){setState(() {onTapE(2,1);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(2,2),event: (){setState(() {onTapE(2,2);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(2,3),event: (){setState(() {onTapE(2,3);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(2,4),event: (){setState(() {onTapE(2,4);});},w: wide/4,h: high/4,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(3,1),event: (){setState(() {onTapE(3,1);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(3,2),event: (){setState(() {onTapE(3,2);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(3,3),event: (){setState(() {onTapE(3,3);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(3,4),event: (){setState(() {onTapE(3,4);});},w: wide/4,h: high/4,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(4,1),event: (){setState(() {onTapE(4,1);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(4,2),event: (){setState(() {onTapE(4,2);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(4,3),event: (){setState(() {onTapE(4,3);});},w: wide/4,h: high/4,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(4,4),event: (){setState(() {onTapE(4,4);});},w: wide/4,h: high/4,),
              ],
            ),
          ],
        ),
      );
    }
    else if(game.getMode()=='3'){
      return Container(
        width: wide,
        height: high,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(1,1),event: (){setState(() {onTapE(1,1);});},w: wide/3,h: high/3,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(1,2),event: (){setState(() {onTapE(1,2);});},w: wide/3,h: high/3,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(1,3),event: (){setState(() {onTapE(1,3);});},w: wide/3,h: high/3,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(2,1),event: (){setState(() {onTapE(2,1);});},w: wide/3,h: high/3,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(2,2),event: (){setState(() {onTapE(2,2);});},w: wide/3,h: high/3,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(2,3),event: (){setState(() {onTapE(2,3);});},w: wide/3,h: high/3,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(3,1),event: (){setState(() {onTapE(3,1);});},w: wide/3,h: high/3,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(3,2),event: (){setState(() {onTapE(3,2);});},w: wide/3,h: high/3,),
                myGameSlot(mode: game.getModeInt(),num: game.getCurrentSlot(3,3),event: (){setState(() {onTapE(3,3);});},w: wide/3,h: high/3,),
              ],
            ),
          ],
        ),
      );
    }
  }
}