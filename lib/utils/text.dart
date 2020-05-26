import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  final String texto;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final bool center;
  

  Texto( this.texto, {this.size, this.fontWeight = FontWeight.normal,this.color = Colors.black,this.center=false});

  @override
  Widget build(BuildContext context) {
    return  Text(texto,textAlign: center==true?TextAlign.center: TextAlign.justify,style: TextStyle(
      color:color ,
      fontSize: size,
      fontWeight: fontWeight,
    ),);
  }
}