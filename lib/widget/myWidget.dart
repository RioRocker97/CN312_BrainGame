
import 'package:brain_response_6010613518/backend/brain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
class myButton extends StatelessWidget{
  myButton({this.word,this.func,this.wordCol,this.butCol,this.minWideBut});
  String word;
  Function func;
  Color wordCol;
  Color butCol;
  double minWideBut;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ButtonBar(
      children: <Widget>[
        FlatButton(
          child: Text(word,style: GoogleFonts.bitter(textStyle: TextStyle(
            color: wordCol,
            fontSize: 50.0
          )),),
          onPressed: func,
          color: butCol,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        )
      ],
      buttonHeight: 80.0,
      buttonMinWidth: minWideBut,
      alignment: MainAxisAlignment.center,
    );
  }
}
class myContainer extends StatelessWidget{
  myContainer({this.path,this.myWidget});
  String path;
  Widget myWidget;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: h,
      child: myWidget,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
class myTextQuickSand extends StatelessWidget{
  myTextQuickSand({this.word,this.col,this.size});
  String word;
  Color col;
  double size;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      word,
      style: GoogleFonts.quicksand(
        textStyle: TextStyle(
          fontSize: size,
          color: col,
        )
      ),
    );
  }
}
class myTextLato extends StatelessWidget{
  myTextLato({this.word,this.col,this.size});
  String word;
  Color col;
  double size;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      word,
      style: GoogleFonts.lato(
          textStyle: TextStyle(
            fontSize: size,
            color: col,
          )
      ),
    );
  }
}
/*
class myGameAreaGenerator extends StatelessWidget{
  myGameAreaGenerator({this.game,this.onTapE,this.wide,this.high});
  Brain game;
  Function onTapE;
  double high;
  double wide;

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
                myGameSlot(num: game.getCurrentSlot(1,1),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(1,2),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(1,3),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(1,4),event: onTapE,w: wide/4,h: high/4,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(num: game.getCurrentSlot(2,1),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(2,2),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(2,3),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(2,4),event: onTapE,w: wide/4,h: high/4,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(num: game.getCurrentSlot(3,1),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(3,2),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(3,3),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(3,4),event: onTapE,w: wide/4,h: high/4,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(num: game.getCurrentSlot(4,1),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(4,2),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(4,3),event: onTapE,w: wide/4,h: high/4,),
                myGameSlot(num: game.getCurrentSlot(4,4),event: onTapE,w: wide/4,h: high/4,),
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
                myGameSlot(num: game.getCurrentSlot(1,1),event: onTapE,w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(1,2),event: onTapE,w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(1,3),event: onTapE,w: wide/3,h: high/3,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(num: game.getCurrentSlot(2,1),event: onTapE,w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(2,2),event: onTapE,w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(2,3),event: onTapE,w: wide/3,h: high/3,),
              ],
            ),
            Row(
              children: <Widget>[
                myGameSlot(num: game.getCurrentSlot(3,1),event: onTapE,w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(3,2),event: onTapE,w: wide/3,h: high/3,),
                myGameSlot(num: game.getCurrentSlot(3,3),event: onTapE,w: wide/3,h: high/3,),
              ],
            ),
          ],
        ),
      );
    }
  }
}
*/
class myGameSlot extends StatelessWidget{
  myGameSlot({this.num,this.mode,this.event,this.w,this.h});
  int mode;
  int num;
  Function event;
  double w;
  double h;
  String numWord;
  @override
  Widget build(BuildContext context) {
    if(num==-1){numWord = "X";}
    else{numWord=num.toString();}

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: event,
      child: Container(
        width: w,
        height: h,
        color: swapColor(num, mode),
        alignment: Alignment.center,
        child: Container(
          width: w,
          height: h,
          alignment: Alignment.center,
          child: myTextLato(word: numWord,col: Colors.black,size: h/5,),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            )
          ),
        ),
      ),
    );
  }
}

Color swapColor(int current,int mode){
  Color col1 = Colors.limeAccent;
  Color col2 = Colors.amberAccent;
  Color col3 = Colors.deepOrangeAccent;
  Color col4 = Colors.lightBlueAccent;
  Color collast = Colors.blueGrey;

  int step1 = (mode*mode)+1;
  int step2 = (step1*2)-1;
  int step3 = (step1*3)-2;
  int step4 = (step1*4)-3;
  if(current < step1 && current != -1){
    return col1;
  }
  else if(current < step2 && current != -1){
    return col2;
  }
  else if(current < step3 && current != -1){
    return col3;
  }
  else if(current < step4 && current != -1){
    return col4;
  }
  else{
    return collast;
  }
}