import 'package:brain_response_6010613518/backend/routing.dart';
import 'package:brain_response_6010613518/widget/myWidget.dart';
import 'package:brain_response_6010613518/backend/brain.dart';
import 'package:flutter/cupertino.dart';

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

  void onTapE(int x,int y){
    game.playBrain(x,y);
    if(game.playBrainStatus() == false){
      EndRoute(context, 1,t: 5.96);
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
                myGameSlot(num: game.getCurrentSlot(1,1),event: (){setState(() {onTapE(1,1);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(1,2),event: (){setState(() {onTapE(1,2);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(1,3),event: (){setState(() {onTapE(1,3);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(1,4),event: (){setState(() {onTapE(1,4);});},w: wide/4,h: high/4,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(num: game.getCurrentSlot(2,1),event: (){setState(() {onTapE(2,1);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(2,2),event: (){setState(() {onTapE(2,2);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(2,3),event: (){setState(() {onTapE(2,3);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(2,4),event: (){setState(() {onTapE(2,4);});},w: wide/4,h: high/4,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(num: game.getCurrentSlot(3,1),event: (){setState(() {onTapE(3,1);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(3,2),event: (){setState(() {onTapE(3,2);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(3,3),event: (){setState(() {onTapE(3,3);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(3,4),event: (){setState(() {onTapE(3,4);});},w: wide/4,h: high/4,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(num: game.getCurrentSlot(4,1),event: (){setState(() {onTapE(4,1);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(4,2),event: (){setState(() {onTapE(4,2);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(4,3),event: (){setState(() {onTapE(4,3);});},w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(4,4),event: (){setState(() {onTapE(4,4);});},w: wide/4,h: high/4,),
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
                myGameSlot(num: game.getCurrentSlot(1,1),event: (){setState(() {onTapE(1,1);});},w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(1,2),event: (){setState(() {onTapE(1,2);});},w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(1,3),event: (){setState(() {onTapE(1,3);});},w: wide/3,h: high/3,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(num: game.getCurrentSlot(2,1),event: (){setState(() {onTapE(2,1);});},w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(2,2),event: (){setState(() {onTapE(2,2);});},w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(2,3),event: (){setState(() {onTapE(2,3);});},w: wide/3,h: high/3,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(num: game.getCurrentSlot(3,1),event: (){setState(() {onTapE(3,1);});},w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(3,2),event: (){setState(() {onTapE(3,2);});},w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(3,3),event: (){setState(() {onTapE(3,3);});},w: wide/3,h: high/3,),
              ],
            ),
          ],
        ),
      );
    }
  }
}