import 'package:brain_response_6010613518/widget/myWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EndPage extends StatelessWidget{
  EndPage({this.mytime});
  double mytime = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: myContainer(
        path: 'public/TestBG.png',
        myWidget: Center(
          child: myTextQuickSand(
            word: mytime.toString(),
            col: Colors.greenAccent,
            size: 60.0,
          ),
        ),
      ),
    );
  }
}