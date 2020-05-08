
import 'package:brain_response_6010613518/backend/brain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brain_response_6010613518/page/SelectPage.dart';
import 'package:brain_response_6010613518/page/GamePage.dart';

void mainRoute(BuildContext context){
  Navigator.push(context,
      MaterialPageRoute(
        builder: (context) => SelectPage()
      )
  );
}
void selectRoute(BuildContext context,int id){
  Brain mygame = new Brain(id);
  Navigator.push(context,
      MaterialPageRoute(
          builder: (context) => GamePage(
            game: mygame,
          )
      )
  );
}