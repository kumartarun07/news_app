import 'package:flutter/material.dart';

class AppCont
{
  static final List<Map<String,dynamic>> data=
      [
        {"Photo":"assets/img/andrzej.jpg"},
        {"Photo":"assets/img/arindam.jpg"},
        {"Photo":"assets/img/braden.jpg"},
        {"Photo":"assets/img/ishan.jpg"},
        {"Photo":"assets/img/jade.jpg"},
        {"Photo":"assets/img/laia-nunez.jpg"},
        {"Photo":"assets/img/andrzej.jpg"},
        {"Photo":"assets/img/peter.jpg"},
        {"Photo":"assets/img/andrzej.jpg"},
        {"Photo":"assets/img/pexels-aslak-sonde.jpg"},
        {"Photo":"assets/img/andrzej.jpg"},
        {"Photo":"assets/img/pexels-michael.jpg"},
        {"Photo":"assets/img/andrzej.jpg"},
        {"Photo":"assets/img/robert.jpg"},
      ];
}

class Name
{
  static final List<String>data=["All","Public","Nature","Education","Sports","Business","All","Public","Nature","Education","Sports","Business","All","Public","Nature","Education","Sports","Business"];
}


class Cont
{
  var micon;
  String? mtext;
  Cont({required this.mtext,this.micon}){
     Container(height: 50,width: 100,color: Colors.white24,
     child: Row(
       children: [
         Icon(micon),
         Text("mtext")
       ],
     ),
     );
  }
}
