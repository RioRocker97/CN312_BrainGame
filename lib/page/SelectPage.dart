
import 'package:brain_response_6010613518/widget/myWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brain_response_6010613518/backend/routing.dart';
class SelectPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SelectPageState();
  }
}
class SelectPageState extends State<SelectPage>{
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: myContainer(
          path: "public/TestBG.png",
          myWidget: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: h/12),
                child: myTextQuickSand(
                  word: "Select Level",
                  col: Colors.amber,
                  size: h/12,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: h/20),
                child: myButton(word: "3x3",func :(){
                  setState(() {
                    selectRoute(context,3);
                  });
                },wordCol: Colors.black,butCol: Colors.white,minWideBut: 200.0,),
              ),
              myButton(word: "4x4",func :(){
                setState(() {
                  selectRoute(context,4);
                });
              },wordCol: Colors.black,butCol: Colors.white,minWideBut: 200.0,),
            ],
          ),
        ),
      ),
    );
  }
}