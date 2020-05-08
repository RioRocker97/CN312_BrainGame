import 'package:brain_response_6010613518/backend/routing.dart';
import 'package:brain_response_6010613518/widget/myWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class EndPage extends StatefulWidget{
  EndPage({this.mytime,this.mode});
  double mytime;
  int mode;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EndPageState(mt: mytime,m:mode);
  }
}
class EndPageState extends State<EndPage>{
  EndPageState({this.mt,this.m});
  double mt;
  int m;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: myContainer(
        path: 'public/TestBG.png',
        myWidget: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: h/6),
              child: Center(
                child: myTextQuickSand(word:"Level",col: Colors.amber,size: 50.0,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: h/50),
              child: Center(
                child: myTextQuickSand(word:mymode(),col: Colors.amber,size: 40.0,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: h/10),
              child: Center(
                child: myTextQuickSand(word:"Time : "+mt.toString(),col: Colors.black,size: 20.0,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: h/70),
              child: Center(
                child: myTextQuickSand(word:resStatusWord().toString(),col: resStatusColor(),size: 60.0,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: h/10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  myButton(
                    word: "Again ?",func: (){setState(() {EndRoute(context,2);});},
                    wordCol: Colors.deepOrange,butCol: Colors.white,minWideBut: 100.0,
                    wordSize: 30.0,
                  ),
                  myButton(
                    word: "Go Back",func: (){setState(() {EndRoute(context,3);});},
                    wordCol: Colors.deepOrange,butCol: Colors.white,minWideBut: 100.0,
                    wordSize: 30.0,
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
  String mymode(){
    if(m==4){return "4 x 4";}
    else{return "3 x 3";}
  }
  String resStatusWord(){
    if(m==4){
      if(mt > 91.0){
        return "Bad";
      }
      else if(mt > 61.0){
        return "Good";
      }
      else if(mt > 41.0){
        return "Great";
      }
    }
    else{
      if(mt > 31.0){
        return "Bad";
      }
      else if(mt > 21.0){
        return "Good";
      }
      else if(mt > 11.0){
        return "Great";
      }
    }
  }
  Color resStatusColor(){
    if(m==4){
      if(mt > 91.0){
        return Colors.red;
      }
      else if(mt > 61.0){
        return Colors.amber;
      }
      else if(mt > 41.0){
        return Colors.greenAccent;
      }
    }
    else{
      if(mt > 31.0){
        return Colors.red;
      }
      else if(mt > 21.0){
        return Colors.amber;
      }
      else if(mt > 11.0){
        return Colors.greenAccent;
      }
    }
  }
}

