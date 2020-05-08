import 'package:brain_response_6010613518/widget/myWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brain_response_6010613518/backend/routing.dart';
class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}
class MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: myContainer(
          path: "public/TestBG.png",
          myWidget: myButton(word: "Play",func :(){
            setState(() {
              mainRoute(context);
            });
          },wordCol: Colors.black,butCol: Colors.white,minWideBut: 200.0,),
        )
      ),
    );
  }
}