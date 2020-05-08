
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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